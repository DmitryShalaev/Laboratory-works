namespace Programm {
    class BTree {
        int item;
        BTree? Left;
        BTree? Right;

        public BTree(int item) {
            this.item = item;
        }

        public BTree(string str) {
            string[] s = str.Split(' ');
            item = int.Parse(s[^1]);
            for(int i = s.Length - 2; i >= 0; i--) {
                Add(int.Parse(s[i]));
            }          
            
        }

        public void Add(int item) {
            if(item < this.item) {
                if(Left != null) {
                    Left.Add(item);
                } else {
                    Left = new BTree(item);
                }
            } else {
                if(Right != null) {
                    Right.Add(item);
                } else {
                    Right = new BTree(item);
                }
            }
        }

        public static void Detour(BTree? node, ref string str) {
            if(node != null) {
                Detour(node.Left, ref str);

                Detour(node.Right, ref str);

                str += node.item.ToString() + " ";
            }
        }

        public override string ToString() {
            string str="";
            Detour(this, ref str);
            return str.TrimEnd(' ');
        }
    }

    class Programm {
        static void Main() {
            BTree tree = new(5);
            tree.Add(6);
            tree.Add(3);
            tree.Add(4);
            tree.Add(1);

            Console.WriteLine(tree);

            BTree StrTree = new(tree.ToString());

            Console.WriteLine(StrTree);
        }
    }
}