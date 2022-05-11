namespace Graph {
	partial class Graph {

		private void DFS(int index, int[] Сomponent, int time) {
			Сomponent[index] = time;
			for(int i = 0; i < _vertexCount; i++) {
				if(Сomponent[i] == 0 && _G[index, i] != 0) {
					DFS(i, Сomponent, time);
				}
			}
		}

		private int GetСomponents() {
			int[] Сomponent = new int[_vertexCount];
			int time = 0;
			while(Сomponent.Contains(0)) {
				for(int i = 0; i < _vertexCount; i++) {
					if(Сomponent[i] == 0) {
						DFS(i, Сomponent, ++time);
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
						if(!list.Contains(new(j,i)))
							list.Add(new(i, j));
						
					_G[i, j] = _G[j, i] = tmp;
				}
			}

			return list;
		}

	}
}
