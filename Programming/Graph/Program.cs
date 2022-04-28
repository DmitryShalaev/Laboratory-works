namespace Graph {
	class Program {
		static void Main() {
			int[,] G = {{0,1,2,3,0,0,0,0,0},
						{1,0,2,2,1,4,0,0,2},
						{2,2,0,0,0,0,0,0,0},
						{3,2,0,0,0,0,0,1,3},
						{0,1,0,0,0,3,1,0,1},
						{0,4,0,0,3,0,0,0,0},
						{0,0,0,0,1,0,0,2,4},
						{0,0,0,1,0,0,2,0,0},
						{0,2,0,3,1,0,4,0,0},
						};

			Graph graph = new(G);

			Graph.PrintMinSpanningTree(graph.MinSpanningTree(5));

			Console.WriteLine(graph.MinRoad(0, 7));

			Console.WriteLine(graph.Dijkstra(0, 7));
			Console.WriteLine(graph.Dijkstra(0, 8));
		}
	}
}