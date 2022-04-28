namespace Graph {
	partial class Graph {
		private int? LastVertex = null;
		private int[] weight = new int[1];
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

		/// <summary>
		///Поиск кратчайшего пути между двумя точками с помощью алгоритма Дейкстры
		/// </summary>
		/// <param name="Start">Начальный узел</param>
		/// <param name="End">Конечный узел</param>
		/// <returns>Стоймость пути</returns>
		public int Dijkstra(int Start, int End) {
			if(Start == LastVertex)
				return weight[End];

			return _Dijkstra((int)(LastVertex = Start), End);
		}

		private int _Dijkstra(int Start, int End) {
			bool[] in_use = new bool[_vertexCount];
			weight = new int[_vertexCount];

			for(int i = 0; i < _vertexCount; i++)
				weight[i] = int.MaxValue;

			weight[Start] = 0;

			while(!AllUsed(in_use)) {
				int MinWeight = GetMin(weight, in_use);

				for(int i = 0; i < _vertexCount; i++)
					if(in_use[i] == false && _G[MinWeight, i] > 0)
						weight[i] = Math.Min(_G[MinWeight, i] + weight[MinWeight], weight[i]);

				in_use[MinWeight] = true;
			}
			return weight[End];
		}
	}
}
