class DSM {
	class Key {
		public Key(string state, char transition) {
			State = state;
			Transition = transition;
		}

		public string State { get; private set; }
		public char Transition { get; private set; }

		public override bool Equals(object? obj) => obj is Key key && State == key.State && Transition == key.Transition;
		public override int GetHashCode() => HashCode.Combine(State, Transition);
	}

	private readonly Dictionary<Key, string> _states = new() {
		{new("S",'0'), "Z" },
		{new("S",'1'), "V" },
		{new("V",'0'), "Z" },
		{new("V",'1'), "V" },
		{new("Z",'0'), "Z" },
		{new("Z",'1'), "V" }
	};

	public bool Run(string str) => Run("S", str);

	private bool Run(string state, string str) {
		if(str.Length == 0 && state == "Z") return true;
		if(str.Length == 0) return false;

		try {
			string _nextState = _states[new(state, str[0])];
			Console.WriteLine($"({state},{str[0]})->{_nextState}");
			return Run(_nextState, str.Remove(0, 1));
		} catch(KeyNotFoundException) {
			Console.WriteLine($"State \"{str[0]}\" not found");
			return false;
		}
	}
}

class Program {
	static void Main() {
		DSM dSM = new();
		Console.WriteLine(dSM.Run("100"));
	}
}