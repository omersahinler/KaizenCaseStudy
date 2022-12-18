
using System.Text;

class CaseStudyQuestion
{
    const string characterSet = "ACDEFGHKLMNPRTXYZ234579";
    public static void Main()
    {
        GenerateUniqueCode(10000,8);
        Console.WriteLine("ARFFGYGA" + " Kulandığınız Kod : " + CouponCodeValidator("ARFFGYGA"));
        Console.WriteLine("ANPFXTEA" + " Kulandığınız Kod : " + CouponCodeValidator("ANPFXTEA"));
        Console.WriteLine("ADRGGFDA" + " Kulandığınız Kod : " + CouponCodeValidator("ADRGGFDA"));
        Console.WriteLine("APMGMACA" + " Kulandığınız Kod : " + CouponCodeValidator("APMGMACA"));
        Console.WriteLine("ARDEMMAA" + " Kulandığınız Kod : " + CouponCodeValidator("ARDEMMAA"));
        Console.WriteLine("AYCMPGFA" + " Kulandığınız Kod : " + CouponCodeValidator("AYCMPGFA"));
        Console.ReadLine();
    }
    public static void GenerateUniqueCode(uint codesize = 10000, int length = 8)
    {
        uint index = 1;
        while (index <= codesize)
        {
            var code = CouponCode(index * codesize,length);
            Console.WriteLine(index + ". " + code);
            index++;
        }
    }

    public static string CouponCode(uint number,int length)
    {
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < length; ++i)
        {
            code.Append(characterSet[(int)number & ((1 << 4) - 1)]);
            number = number >> 4;
        }
        return code.ToString();
    }

    public static bool CouponCodeValidator(string coupon)
    {
        uint n = 0;
        for (int i = 0; i < coupon.Length; ++i)
            n = n | (((uint)characterSet.IndexOf(coupon[i])) << (4 * i));
        return n > 0;
    }
}