package system;

abstract Single(Float) from Float from Int
{
	public inline function new(i:Float) this = i;

	@:from public static inline function FromInt(i:Int) : Single return new Single(i);
	@:from public static inline function FromByte(i:system.Byte) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromInt16(i:system.Int16) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromInt32(i:system.Int32) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromInt64(i:system.Int64) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromSByte(i:system.Byte) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromUInt16(i:system.UInt16) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromUInt32(i:system.UInt32) : Single return new Single(i.ToHaxeInt());
	@:from public static inline function FromUInt64(i:system.UInt64) : Single return new Single(i.ToHaxeInt());

	public inline function ToBoolean_IFormatProvider(provider:IFormatProvider) : system.Boolean return system.Convert.ToBoolean_Single(this);
	public inline function ToChar_IFormatProvider(provider:IFormatProvider) : system.Char return system.Convert.ToChar_Single(this);
	public inline function ToSByte_IFormatProvider(provider:IFormatProvider) : system.SByte return system.Convert.ToSByte_Single(this);
	public inline function ToByte_IFormatProvider(provider:IFormatProvider) : system.Byte return system.Convert.ToByte_Single(this);
	public inline function ToInt16_IFormatProvider(provider:IFormatProvider) : system.Int16 return system.Convert.ToInt16_Single(this);
	public inline function ToUInt16_IFormatProvider(provider:IFormatProvider) : system.UInt16 return system.Convert.ToUInt16_Single(this);
	public inline function ToInt32_IFormatProvider(provider:IFormatProvider) : system.Int32 return system.Convert.ToInt32_Single(this);
	public inline function ToUInt32_IFormatProvider(provider:IFormatProvider) : system.UInt32 return system.Convert.ToUInt32_Single(this);
	public inline function ToInt64_IFormatProvider(provider:IFormatProvider) : system.Int64 return system.Convert.ToInt64_Single(this);
	public inline function ToUInt64_IFormatProvider(provider:IFormatProvider) : system.UInt64 return system.Convert.ToUInt64_Single(this);
	public inline function ToSingle_IFormatProvider(provider:IFormatProvider) : system.Single return system.Convert.ToSingle_Single(this);
	public inline function ToDouble_IFormatProvider(provider:IFormatProvider) : system.Double return system.Convert.ToDouble_Single(this);


	public inline function ToHaxeFloat(): Float return this;
	public inline function ToString() : CsString return Std.string(this);
	public function GetHashCode() : system.Int32 return system.Convert.ToHashCode_Single(this);
	
	public static var NaN(get, never) : system.Single;
	public static inline function get_NaN() : system.Single return Math.NaN;
	public static inline function IsNaN(v:system.Single) : system.Boolean return Math.isNaN(v.ToHaxeFloat());
	
	@:op(-A) public inline function neg() : system.Single return -this;

    @:op(A++) public inline function postinc() : system.Single return this++;
    @:op(++A) public inline function preinc() : system.Single return ++this;

    @:op(A--) public inline function postdec() : system.Single return this--;
    @:op(--A) public inline function predec() : system.Single return --this;
	
	@:op(A * B) public static function mul1(lhs : system.Single, rhs : Int) : system.Single;
    @:op(A * B) public static function mul2(lhs : Int, rhs : system.Single) : system.Single;
    @:op(A * B) public static function mul3(lhs : system.Single, rhs : Float) : system.Single;
    @:op(A * B) public static function mul4(lhs : Float, rhs : system.Single) : system.Single;
	
	@:op(A * B) public static function mul5(lhs : system.Single, rhs : system.Char) : system.Single;
	@:op(A * B) public static function mul6(lhs : system.Single, rhs : system.Byte) : system.Single;
    @:op(A * B) public static function mul7(lhs : system.Single, rhs : system.Int16) : system.Single;
    @:op(A * B) public static function mul8(lhs : system.Single, rhs : system.Int32) : system.Single;
    @:op(A * B) public static function mul9(lhs : system.Single, rhs : system.Int64) : system.Single;
    @:op(A * B) public static function mul10(lhs : system.Single, rhs : system.SByte) : system.Single;
    @:op(A * B) public static function mul11(lhs : system.Single, rhs : system.UInt16) : system.Single;
    @:op(A * B) public static function mul12(lhs : system.Single, rhs : system.UInt32) : system.Single;
    @:op(A * B) public static function mul13(lhs : system.Single, rhs : system.UInt64) : system.Single;	
    @:op(A * B) public static function mul14(lhs : system.Single, rhs : system.Single) : system.Single;	
    @:op(A * B) public static function mul15(lhs : system.Single, rhs : system.Double) : system.Single;	
	

    @:op(A / B) public static function div1(lhs : system.Single, rhs : Int) : system.Single;
    @:op(A / B) public static function div2(lhs : Int, rhs : system.Single) : system.Single;
    @:op(A / B) public static function div3(lhs : system.Single, rhs : Float) : system.Single;
    @:op(A / B) public static function div4(lhs : Float, rhs : system.Single) : system.Single;
	
	@:op(A / B) public static function div5(lhs : system.Single, rhs : system.Char) : system.Single;
	@:op(A / B) public static function div6(lhs : system.Single, rhs : system.Byte) : system.Single;
    @:op(A / B) public static function div7(lhs : system.Single, rhs : system.Int16) : system.Single;
    @:op(A / B) public static function div8(lhs : system.Single, rhs : system.Int32) : system.Single;
    @:op(A / B) public static function div9(lhs : system.Single, rhs : system.Int64) : system.Single;
    @:op(A / B) public static function div10(lhs : system.Single, rhs : system.SByte) : system.Single;
    @:op(A / B) public static function div11(lhs : system.Single, rhs : system.UInt16) : system.Single;
    @:op(A / B) public static function div12(lhs : system.Single, rhs : system.UInt32) : system.Single;
    @:op(A / B) public static function div13(lhs : system.Single, rhs : system.UInt64) : system.Single;	
    @:op(A / B) public static function div14(lhs : system.Single, rhs : system.Single) : system.Single;	
    @:op(A / B) public static function div15(lhs : system.Single, rhs : system.Double) : system.Single;	
	

    @:op(A % B) public static function mod1(lhs : system.Single, rhs : Int) : system.Single;
    @:op(A % B) public static function mod2(lhs : Int, rhs : system.Single) : system.Single;
    @:op(A % B) public static function mod3(lhs : system.Single, rhs : Float) : system.Single;
    @:op(A % B) public static function mod4(lhs : Float, rhs : system.Single) : system.Single;
                 	
	@:op(A % B) public static function mod5(lhs : system.Single, rhs : system.Char) : system.Single;
	@:op(A % B) public static function mod6(lhs : system.Single, rhs : system.Byte) : system.Single;
    @:op(A % B) public static function mod7(lhs : system.Single, rhs : system.Int16) : system.Single;
    @:op(A % B) public static function mod8(lhs : system.Single, rhs : system.Int32) : system.Single;
    @:op(A % B) public static function mod9(lhs : system.Single, rhs : system.Int64) : system.Single;
    @:op(A % B) public static function mod10(lhs : system.Single, rhs : system.SByte) : system.Single;
    @:op(A % B) public static function mod11(lhs : system.Single, rhs : system.UInt16) : system.Single;
    @:op(A % B) public static function mod12(lhs : system.Single, rhs : system.UInt32) : system.Single;
    @:op(A % B) public static function mod13(lhs : system.Single, rhs : system.UInt64) : system.Single;	
    @:op(A % B) public static function mod14(lhs : system.Single, rhs : system.Single) : system.Single;	
    @:op(A % B) public static function mod15(lhs : system.Single, rhs : system.Double) : system.Single;	
	
             
    @:op(A + B) public static function add1(lhs : system.Single, rhs : Int) : system.Single;
    @:op(A + B) public static function add2(lhs : Int, rhs : system.Single) : system.Single;
    @:op(A + B) public static function add3(lhs : system.Single, rhs : Float) : system.Single;
    @:op(A + B) public static function add4(lhs : Float, rhs : system.Single) : system.Single;
			
	@:op(A + B) public static function add5(lhs : system.Single, rhs : system.Char) : system.Single;
	@:op(A + B) public static function add6(lhs : system.Single, rhs : system.Byte) : system.Single;
    @:op(A + B) public static function add7(lhs : system.Single, rhs : system.Int16) : system.Single;
    @:op(A + B) public static function add8(lhs : system.Single, rhs : system.Int32) : system.Single;
    @:op(A + B) public static function add9(lhs : system.Single, rhs : system.Int64) : system.Single;
    @:op(A + B) public static function add10(lhs : system.Single, rhs : system.SByte) : system.Single;
    @:op(A + B) public static function add11(lhs : system.Single, rhs : system.UInt16) : system.Single;
    @:op(A + B) public static function add12(lhs : system.Single, rhs : system.UInt32) : system.Single;
    @:op(A + B) public static function add13(lhs : system.Single, rhs : system.UInt64) : system.Single;	
    @:op(A + B) public static function add14(lhs : system.Single, rhs : system.Single) : system.Single;	
    @:op(A + B) public static function add15(lhs : system.Single, rhs : system.Double) : system.Single;	
    @:op(A + B) public static inline function add16(lhs : system.Single, rhs : system.CsString) : system.CsString return lhs.ToString() + rhs;
    @:op(A + B) public static inline function add17(lhs : system.Single, rhs : String) : system.CsString return lhs.ToString() + rhs;

                              
    @:op(A - B) public static function sub1(lhs : system.Single, rhs : Int) : system.Single;
    @:op(A - B) public static function sub2(lhs : Int, rhs : system.Single) : system.Single;
    @:op(A - B) public static function sub3(lhs : system.Single, rhs : Float) : system.Single;
    @:op(A - B) public static function sub4(lhs : Float, rhs : system.Single) : system.Single;
		
	@:op(A - B) public static function sub5(lhs : system.Single, rhs : system.Char) : system.Single;
	@:op(A - B) public static function sub6(lhs : system.Single, rhs : system.Byte) : system.Single;
    @:op(A - B) public static function sub7(lhs : system.Single, rhs : system.Int16) : system.Single;
    @:op(A - B) public static function sub8(lhs : system.Single, rhs : system.Int32) : system.Single;
    @:op(A - B) public static function sub9(lhs : system.Single, rhs : system.Int64) : system.Single;
    @:op(A - B) public static function sub10(lhs : system.Single, rhs : system.SByte) : system.Single;
    @:op(A - B) public static function sub11(lhs : system.Single, rhs : system.UInt16) : system.Single;
    @:op(A - B) public static function sub12(lhs : system.Single, rhs : system.UInt32) : system.Single;
    @:op(A - B) public static function sub13(lhs : system.Single, rhs : system.UInt64) : system.Single;	
    @:op(A - B) public static function sub14(lhs : system.Single, rhs : system.Single) : system.Single;	
    @:op(A - B) public static function sub15(lhs : system.Single, rhs : system.Double) : system.Single;	


    @:op(A > B) public static function gt1(lhs : system.Single, rhs : Int) : system.Boolean;
    @:op(A > B) public static function gt2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A > B) public static function gt3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A > B) public static function gt4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A > B) public static function gt5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A > B) public static function gt6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A > B) public static function gt7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A > B) public static function gt8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A > B) public static function gt9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A > B) public static function gt10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A > B) public static function gt11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A > B) public static function gt12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A > B) public static function gt13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A > B) public static function gt14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A > B) public static function gt15(lhs : system.Single, rhs : system.Double) : system.Boolean;	

    @:op(A < B) public static function lt1(lhs : system.Single, rhs : Int) : system.Boolean;
	@:op(A < B) public static function lt2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A < B) public static function lt3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A < B) public static function lt4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A < B) public static function lt5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A < B) public static function lt6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A < B) public static function lt7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A < B) public static function lt8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A < B) public static function lt9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A < B) public static function lt10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A < B) public static function lt11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A < B) public static function lt12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A < B) public static function lt13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A < B) public static function lt14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A < B) public static function lt15(lhs : system.Single, rhs : system.Double) : system.Boolean;	

	
    @:op(A >= B) public static function gte1(lhs : system.Single, rhs : Int) : system.Boolean;
    @:op(A >= B) public static function gte2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A >= B) public static function gte3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A >= B) public static function gte4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A >= B) public static function gte5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A >= B) public static function gte6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A >= B) public static function gte7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A >= B) public static function gte8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A >= B) public static function gte9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A >= B) public static function gte10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A >= B) public static function gte11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A >= B) public static function gte12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A >= B) public static function gte13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A >= B) public static function gte14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A >= B) public static function gte15(lhs : system.Single, rhs : system.Double) : system.Boolean;	
	

    @:op(A <= B) public static function lte1(lhs : system.Single, rhs : Int) : system.Boolean;
    @:op(A <= B) public static function lte2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A <= B) public static function lte3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A <= B) public static function lte4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A <= B) public static function lte5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A <= B) public static function lte6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A <= B) public static function lte7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A <= B) public static function lte8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A <= B) public static function lte9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A <= B) public static function lte10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A <= B) public static function lte11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A <= B) public static function lte12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A <= B) public static function lte13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A <= B) public static function lte14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A <= B) public static function lte15(lhs : system.Single, rhs : system.Double) : system.Boolean;	

    @:op(A == B) public static function eq1(lhs : system.Single, rhs : Int) : system.Boolean;
    @:op(A == B) public static function eq2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A == B) public static function eq3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A == B) public static function eq4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A == B) public static function eq5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A == B) public static function eq6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A == B) public static function eq7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A == B) public static function eq8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A == B) public static function eq9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A == B) public static function eq10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A == B) public static function eq11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A == B) public static function eq12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A == B) public static function eq13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A == B) public static function eq14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A == B) public static function eq15(lhs : system.Single, rhs : system.Double) : system.Boolean;	
	

    @:op(A != B) public static function neq1(lhs : system.Single, rhs : Int) : system.Boolean;
    @:op(A != B) public static function neq2(lhs : Int, rhs : system.Single) : system.Boolean;
    @:op(A != B) public static function neq3(lhs : system.Single, rhs : Float) : system.Boolean;
    @:op(A != B) public static function neq4(lhs : Float, rhs : system.Single) : system.Boolean;
	
	@:op(A != B) public static function neq5(lhs : system.Single, rhs : system.Char) : system.Boolean;
	@:op(A != B) public static function neq6(lhs : system.Single, rhs : system.Byte) : system.Boolean;
    @:op(A != B) public static function neq7(lhs : system.Single, rhs : system.Int16) : system.Boolean;
    @:op(A != B) public static function neq8(lhs : system.Single, rhs : system.Int32) : system.Boolean;
    @:op(A != B) public static function neq9(lhs : system.Single, rhs : system.Int64) : system.Boolean;
    @:op(A != B) public static function neq10(lhs : system.Single, rhs : system.SByte) : system.Boolean;
    @:op(A != B) public static function neq11(lhs : system.Single, rhs : system.UInt16) : system.Boolean;
    @:op(A != B) public static function neq12(lhs : system.Single, rhs : system.UInt32) : system.Boolean;
    @:op(A != B) public static function neq13(lhs : system.Single, rhs : system.UInt64) : system.Boolean;	
    @:op(A != B) public static function neq14(lhs : system.Single, rhs : system.Single) : system.Boolean;	
    @:op(A != B) public static function neq15(lhs : system.Single, rhs : system.Double) : system.Boolean;	
	
}