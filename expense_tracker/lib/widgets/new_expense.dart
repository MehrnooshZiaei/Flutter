import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key, required this.onAddExpense});
  final void Function(Expense expense) onAddExpense;  
  @override
  State<NewExpense> createState(){
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense>{

  // Way 1 to save input to a variable
  // var _enteredTitle = '';
  // void _saveTitleInput(String inputValue){
  //   _enteredTitle = inputValue;
  // }
  
  // Way 2 to save input to a variable
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.leisure;

  void _presentDatePicker() async{
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context, 
      initialDate: now, 
      firstDate: firstDate, 
      lastDate: now,
    );
    // .then((value) {
    //   _dateController = value
    // });
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitExpenseData(){
    final enteredAmount = double.tryParse(_amountController.text); // tryParse('Hello') = null
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0; 
    if (_titleController.text.trim().isEmpty || amountIsInvalid || _selectedDate == null ){
      showDialog(
        context: context, 
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid input!'),
          content: const Text('Please make sure a valid title, amount, date and category was entered.'),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Okay'),
            )
          ],
        ),
      );
      return;
    }
    widget.onAddExpense(Expense(title: _titleController.text, amount: enteredAmount, date: _selectedDate!, category: _selectedCategory));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            //keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '\$',
                    label: Text('Amount'),
                  )
                ),
              ),
              const SizedBox(width: 16,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_selectedDate == null ? 'No Date Selected': formatter.format(_selectedDate!)),
                    IconButton(
                      onPressed: _presentDatePicker, 
                      icon: const Icon(Icons.calendar_month),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values.map(
                  (category) => DropdownMenuItem(
                    value: category, // Not visible to the user, only used to store internally -> Use in onChnage function
                    child: Text(
                      category.name.toUpperCase(),
                    )
                  )
                ).toList(), 
                onChanged: (value){
                  if (value == null) return;
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: (){
                  // _amountController.clear();
                  // _titleController.clear();
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: _submitExpenseData, 
                child: const Text("Save Expense"),
              ),
            ],
          )
        ],
      ),
    );
  }
}