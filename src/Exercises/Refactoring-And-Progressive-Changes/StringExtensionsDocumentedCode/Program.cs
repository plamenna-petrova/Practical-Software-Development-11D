using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
/// A static classes that contains useful string extensions
/// </summary>
public static class StringExtensions
{
    /// <summary>
    /// A static method that converts string to mdfHash
    /// </summary>
    /// <param name="input">The string which will get its hash computed</param>
    /// <returns></returns>
    public static string ToMd5Hash(this string input)
    {
        var md5Hash = MD5.Create();
        var data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));
        var builder = new StringBuilder();

        for (int i = 0; i < data.Length; i++)
        {
            builder.Append(data[i].ToString("x2"));
        }

        return builder.ToString();
    }

    /// <summary>
    /// A static method that converts a string to a boolean value
    /// </summary>
    /// <param name="input">The string that will be converted to a boolean</param>
    /// <returns></returns>
    public static bool ToBoolean(this string input)
    {
        var stringTrueValues = new[] { "true", "ok", "yes", "1", "да" };
        return stringTrueValues.Contains(input.ToLower());
    }

    /// <summary>
    /// A static method that converts a string to a short value
    /// </summary>
    /// <param name="input">The string that will be converted to short</param>
    /// <returns></returns>
    public static short ToShort(this string input)
    {
        short shortValue;
        short.TryParse(input, out shortValue);
        return shortValue;
    }

    /// <summary>
    /// A static method taht converts a string to an integer
    /// </summary>
    /// <param name="input">The string that will be converted to an integer</param>
    /// <returns></returns>
    public static int ToInteger(this string input)
    {
        int integerValue;
        int.TryParse(input, out integerValue);
        return integerValue;
    }

    /// <summary>
    /// A static method that converts a string to a long value
    /// </summary>
    /// <param name="input">The string that will be converted to long</param>
    /// <returns></returns>
    public static long ToLong(this string input)
    {
        long longValue;
        long.TryParse(input, out longValue);
        return longValue;
    }

    /// <summary>
    /// A static method converts a string to a DateTime value
    /// </summary>
    /// <param name="input">The string that will be converted to DateTime</param>
    /// <returns></returns>
    public static DateTime ToDateTime(this string input)
    {
        DateTime dateTimeValue;
        DateTime.TryParse(input, out dateTimeValue);
        return dateTimeValue;
    }

    /// <summary>
    /// A static method that capitalize only the first letter of a string
    /// </summary>
    /// <param name="input">The string which will get its first letter capitalized</param>
    /// <returns></returns>
    public static string CapitalizeFirstLetter(this string input)
    {
        if (string.IsNullOrEmpty(input))
        {
            return input;
        }

        return
            input.Substring(0, 1).ToUpper(CultureInfo.CurrentCulture) +
            input.Substring(1, input.Length - 1);
    }

    /// <summary>
    /// A static method that gets a substring between given strings and has an optional starting index configuration
    /// </summary>
    /// <param name="input">The string that will be manipulated</param>
    /// <param name="startString">The starter string</param>
    /// <param name="endString">The end string</param>
    /// <param name="startFrom">The optional starting position</param>
    /// <returns></returns>
    public static string GetStringBetween(this string input, string startString, string endString, int startFrom = 0)
    {
        input = input.Substring(startFrom);

        startFrom = 0;

        if (!input.Contains(startString) || !input.Contains(endString))
        {
            return string.Empty;
        }

        var startPosition = input.IndexOf(startString, startFrom, StringComparison.Ordinal) + startString.Length;

        if (startPosition == -1)
        {
            return string.Empty;
        }

        var endPosition = input.IndexOf(endString, startPosition, StringComparison.Ordinal);

        if (endPosition == -1)
        {
            return string.Empty;
        }

        return input.Substring(startPosition, endPosition - startPosition);
    }

    /// <summary>
    /// A static method that converts cyrillic to lating letters
    /// </summary>
    /// <param name="input">The string that will be translated to latin</param>
    /// <returns></returns>
    public static string ConvertCyrillicToLatinLetters(this string input)
    {
        var bulgarianLetters = new[]
        {
            "а", "б", "в", "г", "д", "е", "ж", "з", "и", "й", "к", "л", "м", "н", "о",
            "п", "р", "с", "т", "у", "ф", "х", "ц", "ч", "ш", "щ", "ъ", "ь", "ю", "я"
        };

        var latinRepresentationsOfBulgarianLetters = new[]
        {
            "a", "b", "v", "g", "d", "e", "j", "z", "i", "y", "k",
            "l", "m", "n", "o", "p", "r", "s", "t", "u", "f", "h",
            "c", "ch", "sh", "sht", "u", "i", "yu", "ya"
        };

        for (var i = 0; i < bulgarianLetters.Length; i++)
        {
            input = input.Replace(bulgarianLetters[i], latinRepresentationsOfBulgarianLetters[i]);
            input = input.Replace(bulgarianLetters[i].ToUpper(),
                latinRepresentationsOfBulgarianLetters[i].CapitalizeFirstLetter());
        }

        return input;
    }

    /// <summary>
    /// A static method that converts lating letters to cyrillic letters
    /// </summary>
    /// <param name="input">The string that will be translated from latin to cyrillic</param>
    /// <returns></returns>
    public static string ConvertLatinToCyrillicKeyboard(this string input)
    {
        var latinLetters = new[]
        {
            "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p",
            "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
        };

        var bulgarianRepresentationOfLatinKeyboard = new[]
        {
            "а", "б", "ц", "д", "е", "ф", "г", "х", "и", "й", "к",
            "л", "м", "н", "о", "п", "я", "р", "с", "т", "у", "ж",
            "в", "ь", "ъ", "з"
        };

        for (int i = 0; i < latinLetters.Length; i++)
        {
            input = input.Replace(latinLetters[i], bulgarianRepresentationOfLatinKeyboard[i]);
            input = input.Replace(latinLetters[i].ToUpper(),
                bulgarianRepresentationOfLatinKeyboard[i].ToUpper());
        }

        return input;
    }

    /// <summary>
    /// A static method that checks username validity by uppercase / lowercase letters and digits regex
    /// </summary>
    /// <param name="input">The username that will be checked</param>
    /// <returns></returns>
    public static string ToValidUsername(this string input)
    {
        input = input.ConvertCyrillicToLatinLetters();
        return Regex.Replace(input, @"[^a-zA-z0-9_\.]+", string.Empty);
    }

    /// <summary>
    /// A static method that checks whether the given file name is consisted of lating letters
    /// </summary>
    /// <param name="input">The file name that will be checked</param>
    /// <returns></returns>
    public static string ToValidLatinFileName(this string input)
    {
        input = input.Replace(" ", "-").ConvertCyrillicToLatinLetters();
        return Regex.Replace(input, @"[^a-zA-z0-9_\.\-]+", string.Empty);
    }

    /// <summary>
    /// A static method that gets a substring by given 'n' first characters from the original string
    /// </summary>
    /// <param name="input"></param>
    /// <param name="charsCount">The original string from which the first 'n' characters substring will be formed</param>
    /// <returns></returns>
    public static string GetFirstCharacters(this string input, int charsCount)
    {
        return input.Substring(0, Math.Min(input.Length, charsCount));
    }

    /// <summary>
    /// A static method that checks a file extension
    /// </summary>
    /// <param name="fileName">The file name that will be checked</param>
    /// <returns></returns>
    public static string GetFileExtension(this string fileName)
    {
        if (string.IsNullOrWhiteSpace(fileName))
        {
            return string.Empty;
        }

        string[] fileParts = fileName.Split(new[] { "." }, StringSplitOptions.None);

        if (fileParts.Count() == 1 || string.IsNullOrEmpty(fileParts.Last()))
        {
            return string.Empty;
        }

        return fileParts.Last().Trim().ToLower();
    }

    /// <summary>
    /// A static method that retrieves the file content type from a given file extension
    /// </summary>
    /// <param name="fileExtension">The file extension that will be mapped to its corresponding content type</param>
    /// <returns></returns>
    public static string ToContentType(this string fileExtension)
    {
        var fileExtensionToContentType = new Dictionary<string, string>
        {
            { "jpg", "image/jpeg" },
            { "jpeg", "image/jpeg" },
            { "png", "image/x-png" },
            { "docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document" },
            { "doc", "application/msword" },
            { "pdf", "application/pdf" },
            { "txt", "text/plain" },
            { "rtf", "application/rtf" }
        };

        if (fileExtensionToContentType.ContainsKey(fileExtension.Trim()))
        {
            return fileExtensionToContentType[fileExtension.Trim()];
        }

        return "application/octet-stream";
    }

    /// <summary>
    /// A static method that converts a string to a byte array
    /// </summary>
    /// <param name="input">The string that will be converted to a byte array</param>
    /// <returns></returns>
    public static byte[] ToByteArray(this string input)
    {
        var bytesArray = new byte[input.Length * sizeof(char)];
        Buffer.BlockCopy(input.ToCharArray(), 0, bytesArray, 0, bytesArray.Length);
        return bytesArray;
    }
}

