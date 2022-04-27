static class Program {
	static int MinRoad(int[,] G, int Start, int End) {
		int Length = G.GetLength(0);
		bool[] in_use = new bool[Length];

		int MR(int _Start) {
			if(_Start == End) return 0;

			int Price = int.MaxValue;
			in_use[_Start] = true;

			for(int i = 0; i < Length; i++) {
				if(in_use[i] == false && G[_Start, i] > 0) {
					int tmp = MR(i);
					if(tmp != int.MaxValue) {
						Price = Math.Min(Price, tmp + G[_Start, i]);
					}

					in_use[i] = false;
				}
			}
			return Price;
		}
		return MR(Start);
	}

	static void Main() {
		int[,] G = {    {0,1,2,3,0},
						{1,0,2,2,1},
						{2,2,0,0,0},
						{3,2,0,0,0},
						{0,1,0,0,0}
						};

		Console.WriteLine(MinRoad(G, 2, 4));
	}
}