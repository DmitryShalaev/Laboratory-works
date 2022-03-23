namespace program {
	static class Program {
		static void Main() {
			try {

				HashSet set = new();
				set.Add(new("Hello", 10));
				set.Add(new("Hell", 10));
				set.Add(new("Hel", 10));

				HashSet set2 = new();
				set2.Add(new("Hello", 10));
				set2.Add(new("Hell", 10));
				set2.Add(new("Hel", 10));

				HashSet hashSet = set2;

				Console.WriteLine(set);
				Console.WriteLine(set2);

				Console.WriteLine(hashSet.Equals(set2));
			} catch(Exception e) {
				Console.WriteLine(e.Message);
			}

		}

	}


}