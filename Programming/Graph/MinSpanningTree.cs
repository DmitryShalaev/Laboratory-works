namespace Graph {
	partial class Graph {
		private readonly List<int> _vertex = new();
		private bool[] _inUse = new bool[1];

		private void MinSpanningTree() {
			int minWeight = int.MaxValue;
			int index = 0;
			foreach(var item in _vertex)
				for(int i = 0; i < _vertexCount; i++)
					if(!_inUse[i] && _G[item, i] != 0)
						if(minWeight >= _G[item, i]) {
							minWeight = _G[item, i];
							index = i;
						}

			if(minWeight != int.MaxValue) {
				_vertex.Add(index);
				_inUse[index] = true;
				MinSpanningTree();
			}
		}

		/// <summary>
		/// Рекурсивный поиск минимального астовного дереваа
		/// </summary>
		/// <param name="root">Корень дерева</param>
		/// <returns>Cписок узлов вошедших в дерево</returns>
		public List<int> MinSpanningTree(int root) {
			_inUse = new bool[_vertexCount];
			_inUse[root] = true;

			_vertex.Clear();
			_vertex.Add(root);

			MinSpanningTree();

			return _vertex;
		}

		public static void PrintMinSpanningTree(List<int> Tree) {
			string str = "";
			foreach(var item in Tree) {
				str += item + " ";
			}
			Console.WriteLine(str);
		}
	}
}
