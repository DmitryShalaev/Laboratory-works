namespace MyList {
    public class Node {
        public Node? next = null;
        public int item = 0;

        public Node(int i) {
            item = i;
        }
    }

    public class List {
        public Node First;
        public Node Last;
        public int Count = 0;

        public List(int i) {
            First = Last = new Node(i);
            Count++;
        }
        public void Add(int i) {
            Last = Last.next = new Node(i);
            Count++;
        }

        override public string ToString() {
            Node? tmp = First;
            string str = "[";
            while(tmp != null) {
                str += tmp.item + " ";
                tmp = tmp.next;
            }
            return str.TrimEnd() + "]";
        }

        public bool Contains(int i) {
            Node? tmp = First;

            while(tmp != null) {
                if(tmp.item == i) {
                    return true;
                }
                tmp = tmp.next;
            }
            return false;
        }
        public override bool Equals(object? obj) {
            if(Count != (obj as List)?.Count) {
                return false;
            }
            Node? tmp = First;
            while(tmp != null) {
                if(!((obj as List).Contains(tmp.item))) {
                    return false;
                }
                tmp = tmp.next;
            }
            return true;
        }

        public int this[int index] {
            get {
                Node? tmp = First;
                int c = 0;
                while(tmp != null) {
                    if(c == index) {
                        return tmp.item;
                    }
                    c++;
                    tmp = tmp.next;
                }
                throw new Exception("Error");

            }
            set {
                if(!(value >= -100 && value <= 100))
                    throw new Exception($"Число {value} выходит из диапазона от -100 до 100");

                Node? tmp = First;
                int c = 0;
                while(tmp != null) {
                    if(c == index) {
                        tmp.item = value;
                        return;
                    }
                    c++;
                    tmp = tmp.next;
                }
                throw new Exception("Error set");
            }
        }
    }
}
namespace Program {
    class Programm {
        static int Main() {
            try {
                MyList.List l = new(10);
                MyList.List l2 = new(3);
                l.Add(3);
                l2.Add(10);
                l.Add(6);
                l2.Add(6);
                l.Add(8884);
                l2.Add(4);
                Console.WriteLine(l);
                Console.WriteLine(l2);
                for(int i = 0; i < l.Count; i++) {
                    Console.WriteLine(l[i]) ;
                }
                // l[1] = 100;
               
                Console.WriteLine(l.Equals(l2));
                    
                Console.WriteLine(l);
            } catch(Exception e) {
                Console.WriteLine(e.Message);
            }



            return 0;
        }
    }
}