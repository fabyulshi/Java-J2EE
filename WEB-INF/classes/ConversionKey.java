package cpabe;
import it.unisa.dia.gas.jpbc.Element;

public class ConversionKey
{
	public byte[] _N;
	public Element _R;
	public ConversionKey(byte[] N, Element R)
	{
		this._N = N;
		this._R = R.duplicate();
	}
}