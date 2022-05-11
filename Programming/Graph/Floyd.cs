namespace Graph {
	partial class Graph {
		private int[,]? FloydAncestors;

		public int Floyd(int Start, int End) {
			int[,] D = new int[_vertexCount, _vertexCount];
			FloydAncestors = new int[_vertexCount, _vertexCount];


			for(int i = 0; i < _vertexCount; i++)
				for(int j = 0; j < _vertexCount; j++) {
					D[i, j] = _G[i, j] == 0 ? int.MaxValue : _G[i, j];
					FloydAncestors[i, j] = j;
				}


			for(int k = 0; k < _vertexCount; k++)
				for(int i = 0; i < _vertexCount; i++)
					for(int j = 0; j < _vertexCount; j++) {
						if(D[i, k] == int.MaxValue || D[k, j] == int.MaxValue) continue;
						int tmp = D[i, k] + D[k, j];
						if(tmp < D[i, j]) {
							D[i, j] = tmp;
							FloydAncestors[i, j] = FloydAncestors[i, k];
						}
					}

			return D[Start, End];
		}

		public string FloydPath(int Start, int End) {
			Floyd(Start, End);
			string str = "";

			int index = Start;
			while(index != End) {
				str += index + "->";
				index = FloydAncestors[index, End];
			}

			return str + End;
		}
	}
}
