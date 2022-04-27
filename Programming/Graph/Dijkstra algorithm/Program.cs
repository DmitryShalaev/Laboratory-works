static class Program {
	static int GetMin(int[] Arr, bool[] in_use) {
		int min = int.MaxValue;
		int index = 0;
		for(int i = 0; i < Arr.Length; i++) {
			if(min >= Arr[i] && in_use[i] != true) {
				min = Arr[i];
				index = i;
			}
		}
		return index;
	}

	static bool AllUsed(bool[] Arr) {
		foreach(var item in Arr)
			if(item == false) return false;

		return true;
	}

	static int Dijkstra(int[,] G, int Start, int End) {
		int Length = G.GetLength(0);
		bool[] in_use = new bool[Length];
		int[] weight = new int[Length];

		for(int i = 0; i < Length; i++)
			weight[i] = int.MaxValue;

		weight[Start] = 0;

		while(!AllUsed(in_use)) {
			int MinWeight = GetMin(weight, in_use);

			for(int i = 0; i < Length; i++)
				if(in_use[i] == false && G[MinWeight, i] > 0)
					weight[i] = Math.Min(G[MinWeight, i] + weight[MinWeight], weight[i]);

			in_use[MinWeight] = true;
		}
		return weight[End];
	}

	static void Main() {
		int[,] G = {    {0,1,2,3,0,0,0,0,0},
						{1,0,2,2,1,4,0,0,2},
						{2,2,0,0,0,0,0,0,0},
						{3,2,0,0,0,0,0,1,3},
						{0,1,0,0,0,3,1,0,1},
						{0,4,0,0,3,0,0,0,0},
						{0,0,0,0,1,0,0,2,4},
						{0,0,0,1,0,0,2,0,0},
						{0,2,0,3,1,0,4,0,0},
						};

		Console.WriteLine(Dijkstra(G, 2, 4));
	}
}