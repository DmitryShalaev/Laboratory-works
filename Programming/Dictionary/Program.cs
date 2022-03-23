namespace Program;

class Pair {
	public string str;
	public char chr;

	public Pair(string str, char chr) {
		this.str = str;
		this.chr = chr;
	}

	public override bool Equals(object? obj) {
		if(obj is not Pair pair) return false;

		return str.Equals(pair.str) && chr.Equals(pair.chr);
	}

	public override string ToString() { 
		return $"(\"{str}\",\'{chr}\')";
	}

	public override int GetHashCode() {
		return str.GetHashCode() + chr.GetHashCode();
	}
}

class Program {
	static void Main() { 
	
		Dictionary<Pair, string> pairs = new();
		pairs.Add(new("A",'a'), "S");
		pairs.Add(new("A",'b'), "Hello");
		pairs.Add(new("A",'c'), "World");

		Console.WriteLine(pairs[new("A", 'b')]);

		foreach(var item in pairs) {
			Console.WriteLine(item.Key +" -> \"" + item.Value+"\"");
		}
	}
}