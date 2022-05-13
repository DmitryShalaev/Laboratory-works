namespace Graph {
	class Program {
		static void Main() {
			int[,] G = {{0,1,2,3,0,0,0,0,0},
						{1,0,2,2,1,4,0,0,2},
						{2,2,0,0,0,0,0,0,0},
						{3,2,0,0,0,0,0,0,3},
						{0,1,0,0,0,3,1,0,1},
						{0,4,0,0,3,0,0,0,0},
						{0,0,0,0,1,0,0,2,4},
						{0,0,0,0,0,0,2,0,0},
						{0,2,0,3,1,0,4,0,0},
						};
			try {

				Graph graph = new(G);

				Graph.PrintMinSpanningTree(graph.MinSpanningTree(2));

				Console.WriteLine(graph.MinRoad(2, 7));

				Console.WriteLine("DijkstraPath:\t" + graph.DijkstraPath(2, 7));

				Console.WriteLine("FloydPath:\t" + graph.FloydPath(2, 7));

				foreach(var item in graph.Bridges()) {
					Console.WriteLine(item);
				}

			} catch(Exception e) {
				Console.WriteLine(e.Message);
			}
			
		}
	}
}