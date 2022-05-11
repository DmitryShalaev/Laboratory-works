namespace Graph {
	partial class Graph {
		private int[]? DijkstraAncestors;

		/// <summary>
		///Поиск кратчайшего пути между двумя точками с помощью алгоритма Дейкстры
		/// </summary>
		/// <param name="Start">Начальный узел</param>
		/// <param name="End">Конечный узел</param>
		/// <returns>Стоймость пути</returns>
		public int Dijkstra(int Start, int End) {
			bool[] in_use = new bool[_vertexCount];
			int[] weight = new int[_vertexCount];
			DijkstraAncestors = new int[_vertexCount];

			for(int i = 0; i < _vertexCount; i++)
				weight[i] = int.MaxValue;

			weight[Start] = 0;

			while(!AllUsed(in_use)) {
				int MinWeight = GetMin(weight, in_use);

				for(int i = 0; i < _vertexCount; i++)
					if(in_use[i] == false && _G[MinWeight, i] > 0) {
						int tmp = _G[MinWeight, i] + weight[MinWeight];
						if(tmp < weight[i]) {
							weight[i] = tmp;
							DijkstraAncestors[i] = MinWeight;
						}

					}
				in_use[MinWeight] = true;
			}
			return weight[End];
		}

		public string DijkstraPath(int Start, int End) {
			Dijkstra(Start, End);
			string str ="";

			int index = End;
			while(DijkstraAncestors[index] != 0) {
				str = DijkstraAncestors[index] + "->" + str;
				index = DijkstraAncestors[index];
			}

			return str + End;
		}

		private static int GetMin(int[] Arr, bool[] in_use) {
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

		private static bool AllUsed(bool[] Arr) {
			foreach(var item in Arr)
				if(item == false) return false;

			return true;
		}
	}
}
