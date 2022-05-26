namespace Graph;
internal partial class Graph {

	public void StronglyConnected() {
		int[,] DT = new int[_vertexCount, _vertexCount];
		int[,] D = new int[_vertexCount, _vertexCount];
		int[,] M = new int[_vertexCount, _vertexCount];

		for(int i = 0; i < _vertexCount; i++) {
			for(int j = 0; j < _vertexCount; j++)
				DT[j, i] = D[i, j] = MinRoad(i, j) != int.MaxValue ? 1 : 0;
		}

		for(int i = 0; i < _vertexCount; i++) {
			for(int j = 0; j < _vertexCount; j++)
				M[i, j] = DT[i, j] * D[i, j];
		}

		List<string> list = new();
		for(int i = 0; i < _vertexCount; i++) {
			string s = "";
			for(int j = 0; j < _vertexCount; j++) {
				if(M[i, j] == 1) {
					s += j + " ";
				}
			}
			if(!list.Contains(s)) {
				list.Add(s);
			}
		}

		foreach(string? item in list) {
			Console.WriteLine(item);
		}
	}
}
