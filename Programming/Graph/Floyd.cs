namespace Graph {
	partial class Graph {
		public int Floyd(int Start, int End) {
			int[,] D = new int[_vertexCount, _vertexCount];


			for(int i = 0; i < _vertexCount; i++)
				for(int j = 0; j < _vertexCount; j++)
					D[i, j] = _G[i, j] == 0 ? int.MaxValue : _G[i, j];


			for(int k = 0; k < _vertexCount; k++)
				for(int i = 0; i < _vertexCount; i++)
					for(int j = 0; j < _vertexCount; j++) {
						if(D[i, k] == int.MaxValue || D[k, j] == int.MaxValue) continue;
							D[i, j] = Math.Min(D[i, k] + D[k, j], D[i, j]);
					}

			return D[Start, End];
		}

	}
}
