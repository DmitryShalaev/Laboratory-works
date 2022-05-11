namespace Graph {
	partial class Graph {
		private readonly int [,] _G;

		private readonly int _vertexCount;

		public Graph(int[,] G) {
			_vertexCount = G.GetLength(0);
			_G = new int[_vertexCount, _vertexCount];

			for(int i = 0; i < _vertexCount; i++)
				for(int j = 0; j < _vertexCount; j++)
					_G[i, j] = G[i, j];
		}
	}
}
