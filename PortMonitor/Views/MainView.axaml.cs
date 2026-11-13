using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.LogicalTree;

namespace PortMonitor.Views
{
    public partial class MainView : UserControl
    {
        // Текущее число в виде строки
        private string _current = "0";

        /// <summary>
        /// Полное введённое выражение, например "7+3*2".
        /// Обновляется при каждом нажатии цифры/оператора.
        /// </summary>
        public string Expression { get; private set; } = "";

        public MainView()
        {
            InitializeComponent();

            // Привязываем один общий обработчик ко всем кнопкам
            foreach (var btn in this.GetLogicalDescendants().OfType<Button>())
	    {
		//К событию Click этой кнопки добавь метод OnButtonClick в список тех, кого нужно вызвать при клике.
                btn.Click += OnButtonClick;
	    }	

            DisplayText.Text = _current;
        }

	// --- Парсер выражения с приоритетом операций ---
	private double Evaluate(string expr)
	{
	    int pos = 0;
	    return ParseExpression(expr, ref pos);
	}

	// expression := term (('+' | '-') term)*
	private double ParseExpression(string s, ref int pos)
	{
	    double left = ParseTerm(s, ref pos);
	    while (pos < s.Length && (s[pos] == '+' || s[pos] == '-'))
	    {
		char op = s[pos++];
		double right = ParseTerm(s, ref pos);
		left = op == '+' ? left + right : left - right;
	    }
	    return left;
	}

	// term := factor (('*' | '/') factor)*
	private double ParseTerm(string s, ref int pos)
	{
	    double left = ParseFactor(s, ref pos);
	    while (pos < s.Length && (s[pos] == '*' || s[pos] == '/'))
	    {
		char op = s[pos++];
		double right = ParseFactor(s, ref pos);
		if (op == '/' && right == 0)
		    throw new DivideByZeroException("Деление на ноль");
		left = op == '*' ? left * right : left / right;
	    }
	    return left;
	}

	// factor := число (последовательность цифр)
	private double ParseFactor(string s, ref int pos)
	{
	    int start = pos;
	    while (pos < s.Length && char.IsDigit(s[pos]))
		pos++;
	    if (pos == start)
		throw new FormatException($"Ожидалось число в позиции {pos}");
	    return double.Parse(s.Substring(start, pos - start));
	}

	
        private void OnButtonClick(object? sender, RoutedEventArgs e)
        {
            if (sender is not Button btn || btn.Tag is not string tag)
                return;

            // Пока обрабатываем только цифры 0–9
            if (tag.Length == 1 && char.IsDigit(tag[0]))
            {
                if (Expression == "0")          // не накапливаем ведущие нули
                    Expression = "";
                Expression += tag;
                DisplayText.Text = Expression;
            }

            // --- Операторы + - * / ---
            if (tag is "+" or "-" or "*" or "/")
            {
            // Если выражение пустое — начинать с оператора нельзя
            if (Expression.Length == 0)
            return;

            // Если последний символ уже оператор — заменяем его,
            // чтобы не было "7++3"
            char last = Expression[^1];
            if (last is '+' or '-' or '*' or '/')
             Expression = Expression[..^1];

             Expression += tag;

            // Следующая цифра начнёт новое число
            _current = "0";
            DisplayText.Text = Expression;  // показываем всё выражение
            return;
            }

            // --- Сброс ---
            if (tag == "C")
            {
             _current = "0";
             Expression = "";
             DisplayText.Text = "0";
             return;
            }


	    if (tag == "=")
	    {
	      if (string.IsNullOrEmpty(Expression))
		  return;

	      // Если выражение заканчивается оператором — отбрасываем его
	      char last = Expression[^1];
	      if (last is '+' or '-' or '*' or '/')
		  Expression = Expression[..^1];

	      if (string.IsNullOrEmpty(Expression))
		  return;

	      try
	      {
		  // здесь вычисляем выражение  
		  double result = Evaluate(Expression);

		  DisplayText.Text = result.ToString();
		  _current = result.ToString();
		  Expression = result.ToString();   // можно продолжать с результата
		  //_justEvaluated = true;
	      }
	      catch (DivideByZeroException)
	      {
		  DisplayText.Text = "Ошибка: /0";
		  _current = "0";
		  Expression = "";
		  //_justEvaluated = true;
	      }
	      catch (Exception)
	      {
		  DisplayText.Text = "Ошибка";
		  _current = "0";
		  Expression = "";
		  //_justEvaluated = true;
	      }
	      return;
	  }
        }
	
    }










    
}


