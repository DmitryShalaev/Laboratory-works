namespace Graph;
internal class Program {
	private static void Main() {
		int[,] G = {{0,0,0,0,0,0},
						{0,0,1,0,0,0},
						{0,0,0,0,0,1},
						{1,0,0,0,1,0},
						{1,0,0,0,0,0},
						{0,1,0,1,0,0}
						};
		try {

			Graph graph = new(G);
			/*
							Graph.PrintMinSpanningTree(graph.MinSpanningTree(0));

							Console.WriteLine(graph.MinRoad(0, 5));

							Console.WriteLine("DijkstraPath:\t" + graph.DijkstraPath(0, 5));

							Console.WriteLine("FloydPath:\t" + graph.FloydPath(0, 5));

							foreach(var item in graph.Bridges()) {
								Console.WriteLine(item);
							}*/

			//Console.WriteLine("MaxFlow:\t" + graph.MaxFlow(0, 6));

			graph.StronglyConnected();

		} catch(Exception e) {
			Console.WriteLine(e.Message);
		}
	}
}