namespace Graph;
internal partial class Graph {

	public int MaxFlow(int Start, int End) {
		int flow = 0;

		try {
			void Flow() {
				string[] minroad = FloydPath(Start, End).Split("->");
				int minFlow = int.MaxValue;

				for(int i = 1; i < minroad.Length; i++)
					minFlow = Math.Min(minFlow, _G[int.Parse(minroad[i - 1]), int.Parse(minroad[i])]);

				for(int i = 1; i < minroad.Length; i++)
					_G[int.Parse(minroad[i - 1]), int.Parse(minroad[i])] -= minFlow;

				flow += minFlow;
				Flow();
			}

			Flow();
		} catch(Exception) {

			return flow;
		}

		return 0;
	}
}