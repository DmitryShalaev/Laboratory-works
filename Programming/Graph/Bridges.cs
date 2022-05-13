namespace Graph {
	partial class Graph {

		private void DFS(int index, bool[] visited, int time) {
			visited[index] = true;
			for(int i = 0; i < _vertexCount; i++) {
				if(!visited[i] && _G[index, i] != 0) {
					DFS(i, visited, time);
				}
			}
		}

		public int GetСomponents() {
			bool[] visited = new bool[_vertexCount];
			int time = 0;
			while(visited.Contains(false)) {
				for(int i = 0; i < _vertexCount; i++) {
					if(!visited[i]) {
						DFS(i, visited, ++time);
						break;
					}
				}
			}
			return time;
		}

		public List<Tuple<int, int>> Bridges() {
			List < Tuple<int, int> > list = new();

			int СomponentCount = GetСomponents();

			for(int i = 0; i < _vertexCount; i++) {
				for(int j = 0; j < _vertexCount; j++) {
					int tmp = _G[i, j];
					_G[i, j] = _G[j, i] = 0;
					if(GetСomponents() > СomponentCount)
						if(!list.Contains(new(j, i)))
							list.Add(new(i, j));
						
					_G[i, j] = _G[j, i] = tmp;
				}
			}

			return list;
		}

	}
}
