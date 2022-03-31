class DSM {
	private struct Key {
		public Key(string state, char transition) {
			State = state;
			Transition = transition;
		}

		public string State { get; private set; }
		public char Transition { get; private set; }
	}

	private readonly Dictionary<Key, string> _states = new() {
		{new("S",'0'), "Z"},
		{new("S",'1'), "V"},
		{new("V",'0'), "Z"},
		{new("V",'1'), "V"},
		{new("Z",'0'), "Z"},
		{new("Z",'1'), "V"}
	};

	private readonly string _startState = "S";
	private readonly string _endState = "Z";

	public bool Run(string str) => Run(_startState, str);

	private bool Run(string state, string str) {
		if(str.Length == 0)
			if(state == _endState) return true;
			else return false;

		try {
			string _nextState = _states[new(state, str[0])];
			Console.WriteLine($"({state},{str[0]})->{_nextState}");
			return Run(_nextState, str.Remove(0, 1));
		} catch(KeyNotFoundException) {
			Console.WriteLine($"Transition \"{str[0]}\" in state \"{state}\" does not exist");
			return false;
		}
	}
}

class Program {
	static void Main() {
		DSM dSM = new();
		Console.WriteLine(dSM.Run("101"));
		
	}
}