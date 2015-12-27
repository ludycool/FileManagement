using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebtoolUI
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string res = AESHelper.Encrypt("2015121010080sdsdsddfsdfsdfsdfsdfsdfds", "abcdef1234567890");

            Response.Write(res);
            Response.Write("</br>");
            Response.Write(AESHelper.Decrypt(res, "abcdef1234567890"));



        }

    }
    /// <summary>
    /// ASE加解密
    /// </summary>
    public class AESHelper
    {
        /// <summary>
        /// 获取密钥
        /// </summary>
        private static string Key
        {
            get
            {
                return "abcdef1234567890";    ////必须是16位
            }
        }
        /// <summary>
        /// 默认密钥向量 
        /// </summary>
        private static string IV
        {
            get { return @"L%n67}G\Mk@k%:~Y"; }
        }
        //默认密钥向量 
        private static byte[] _key1 = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF, 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF };

        public static string Encrypt(string toEncrypt, string key)
        {
            byte[] keyArray = UTF8Encoding.UTF8.GetBytes(key);
            byte[] ivArray = UTF8Encoding.UTF8.GetBytes(IV);
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);

            RijndaelManaged rDel = new RijndaelManaged();
            rDel.Key = keyArray;
            rDel.IV = ivArray;
            rDel.Mode = CipherMode.CBC;
            rDel.Padding = PaddingMode.Zeros;

            ICryptoTransform cTransform = rDel.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);

            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

        public static string Decrypt(string toDecrypt, string key)
        {
            byte[] keyArray = UTF8Encoding.UTF8.GetBytes(key);
            byte[] ivArray = UTF8Encoding.UTF8.GetBytes(IV);
            byte[] toEncryptArray = Convert.FromBase64String(toDecrypt);

            RijndaelManaged rDel = new RijndaelManaged();
            rDel.Key = keyArray;
            rDel.IV = ivArray;
            rDel.Mode = CipherMode.CBC;
            rDel.Padding = PaddingMode.Zeros;

            ICryptoTransform cTransform = rDel.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);

            return UTF8Encoding.UTF8.GetString(resultArray);
        }
    }

    public static class XXTEA
    {

        public static string Encrypt(this string data, string key)
        {
            long[] datal = ToLongArray(Encoding.UTF8.GetBytes(data.PadRight(MIN_LENGTH, SPECIAL_CHAR)));
            long[] keyl = ToLongArray(Encoding.UTF8.GetBytes(key.PadRight(MIN_LENGTH, SPECIAL_CHAR)));
            return ToHexString(TEAEncrypt(datal, keyl));
        }

        public static string Decrypt(this string data, string key)
        {
            if (string.IsNullOrWhiteSpace(data)) { return data; }

            long[] datal = ToLongArray(data);
            long[] keyl = ToLongArray(Encoding.UTF8.GetBytes(key.PadRight(MIN_LENGTH, SPECIAL_CHAR)));
            byte[] code = ToByteArray(TEADecrypt(datal, keyl));
            return Encoding.UTF8.GetString(code, 0, code.Length);

        }

        private static long[] TEAEncrypt(long[] data, long[] key)
        {
            int n = data.Length;
            if (n < 1) { return data; }

            long z = data[data.Length - 1], y = data[0], sum = 0, e, p, q;
            q = 6 + 52 / n;
            while (q-- > 0)
            {
                sum += DELTA;
                e = (sum >> 2) & 3;
                for (p = 0; p < n - 1; p++)
                {
                    y = data[p + 1];
                    z = data[p] += (z >> 5 ^ y << 2) + (y >> 3 ^ z << 4) ^ (sum ^ y) + (key[p & 3 ^ e] ^ z);
                }
                y = data[0];
                z = data[n - 1] += (z >> 5 ^ y << 2) + (y >> 3 ^ z << 4) ^ (sum ^ y) + (key[p & 3 ^ e] ^ z);
            }

            return data;
        }

        private static long[] TEADecrypt(long[] data, long[] key)
        {
            int n = data.Length;
            if (n < 1) { return data; }

            long z = data[data.Length - 1], y = data[0], sum = 0, e, p, q;
            q = 6 + 52 / n;
            sum = q * DELTA;
            while (sum != 0)
            {
                e = (sum >> 2) & 3;
                for (p = n - 1; p > 0; p--)
                {
                    z = data[p - 1];
                    y = data[p] -= (z >> 5 ^ y << 2) + (y >> 3 ^ z << 4) ^ (sum ^ y) + (key[p & 3 ^ e] ^ z);
                }
                z = data[n - 1];
                y = data[0] -= (z >> 5 ^ y << 2) + (y >> 3 ^ z << 4) ^ (sum ^ y) + (key[p & 3 ^ e] ^ z);
                sum -= DELTA;
            }

            return data;
        }


        private static long[] ToLongArray(this byte[] data)
        {
            int n = (data.Length % 8 == 0 ? 0 : 1) + data.Length / 8;
            long[] result = new long[n];

            for (int i = 0; i < n - 1; i++)
            {
                result[i] = BitConverter.ToInt64(data, i * 8);
            }

            byte[] buffer = new byte[8];
            Array.Copy(data, (n - 1) * 8, buffer, 0, data.Length - (n - 1) * 8);
            result[n - 1] = BitConverter.ToInt64(buffer, 0);

            return result;
        }
        private static byte[] ToByteArray(this long[] data)
        {
            List<byte> result = new List<byte>(data.Length * 8);

            for (int i = 0; i < data.Length; i++)
            {
                result.AddRange(BitConverter.GetBytes(data[i]));
            }

            while (result[result.Count - 1] == SPECIAL_CHAR)
            {
                result.RemoveAt(result.Count - 1);
            }

            return result.ToArray();
        }

        private static string ToHexString(this long[] data)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sb.Append(data[i].ToString("x2").PadLeft(16, '0'));
            }
            return sb.ToString();
        }
        private static long[] ToLongArray(this string data)
        {
            int len = data.Length / 16;
            long[] result = new long[len];
            for (int i = 0; i < len; i++)
            {
                result[i] = Convert.ToInt64(data.Substring(i * 16, 16), 16);
            }
            return result;
        }

        private const long DELTA = 0x9E3779B9;
        private const int MIN_LENGTH = 32;
        private const char SPECIAL_CHAR = '\0';

    }
}