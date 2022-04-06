static class Program {

	static bool isBalanced(string str) {
		Stack<char> stack = new();

		foreach(char ch in str) {
			if(ch == '(')
				stack.Push(ch);
			else if(ch == ')') {
				if(stack.Count == 0)
					return false;
				
				stack.Pop();
			}
		}
		return stack.Count == 0;
	}

	static void Main() {
		string str = "((())(9+2)()())";

		Console.WriteLine(isBalanced(str));
	}
}