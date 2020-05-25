/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biblioteka;

/**
 *
 * @author Karol
 */
public class ComboboxItem
{
    public String Text;
    public int Value;

    public ComboboxItem(String Text, int Value) {
        this.Text = Text;
        this.Value = Value;
    }

    
    public String getText() {
        return Text;
    }

    public void setText(String Text) {
        this.Text = Text;
    }

    public int getValue() {
        return Value;
    }

    public void setValue(int Value) {
        this.Value = Value;
    }
    

    @Override
    public String toString() {
        return "ComboboxItem{" + "Text=" + Text + ", Value=" + Value + '}';
    }

  
}
