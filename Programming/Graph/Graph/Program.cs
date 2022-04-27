class Graph {
	private int [,] _G;
	private bool[] _inUse;

	private List<int> _vertex;

	private int _vertexCount;

	public Graph(int[,] g) {
		_vertexCount = g.GetLength(0);
		_G = new int[_vertexCount, _vertexCount];
		_inUse = new bool[_vertexCount];
		_vertex = new();

		for(int i = 0; i < _vertexCount; i++) 
			for(int j = 0; j < _vertexCount; j++) 
				_G[i,j] = g[i,j];
	}

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

	public void MinSpanningTree(int n) {
		_inUse = new bool[_vertexCount];
		_vertex.Clear();

		_vertex.Add(n);
		_inUse[n] = true;
		MinSpanningTree();
	}

	public override string ToString() {
		string str = "";
		foreach(var item in _vertex) {
			str += item+" ";
		}
		return str;
	
	}

}

class Program {
	static void Main() {
		int [,] g = new int[,]{ { 0,8,4,3,0},
								{ 8,0,2,0,0},
								{ 4,2,0,0,6},
								{ 3,0,0,0,0},
								{ 0,0,6,0,0}
								};

		Graph graph = new(g);

		for(int i = 0; i < g.GetLength(0); i++) {
			graph.MinSpanningTree(i);
			Console.WriteLine(graph +"\n");
		}
		
	}

}