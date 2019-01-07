package LapTrinhGiaoDien;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class TinhToan extends JFrame implements ActionListener{
	public static void main(String args[]){
		new TinhToan();
	}
	JTextField ta,tb,tr;
	public TinhToan(){
		this.setTitle("Tinh Toan");
		this.setSize(300, 300);
		this.setDefaultCloseOperation(3);
		this.setLayout(null);
		
		
		JLabel la = new JLabel("Nhap a:");
		la.setBounds(20,10,50,30);
		this.add(la);
		JLabel lb = new JLabel("Nhap b:");
		lb.setBounds(20,40,50,30);
		this.add(lb);
		JLabel lr = new JLabel("Ket Qua:");
		lr.setBounds(20,120,50,30);
		this.add(lr);
		ta = new JTextField();
		ta.setBounds(80, 10, 100, 30);

		this.add(ta);
		tb = new JTextField();
		tb.setBounds(80, 40, 100, 30);

		this.add(tb);
		tr = new JTextField();
		tr.setBounds(80, 120, 100, 30);

		this.add(tr);
		
		JButton cong = new JButton("+");
		cong.setBounds(10, 80, 50, 30);
		cong.addActionListener(this);
		this.add(cong);
		
		JButton tru = new JButton("-");
		tru.setBounds(65, 80, 50, 30);
		tru.addActionListener(this);
		this.add(tru);
		
		JButton nhan = new JButton("*");
		nhan.setBounds(120, 80, 50, 30);
		nhan.addActionListener(this);
		this.add(nhan);
		
		JButton chia = new JButton("/");
		chia.setBounds(175, 80, 50, 30);
		chia.addActionListener(this);
		this.add(chia);
		
		
		this.setVisible(true);
		
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		String s = e.getActionCommand();
		if (s.equals("+")){
			try {
				double a = Double.parseDouble(ta.getText());
				double b = Double.parseDouble(tb.getText());
				double c = a + b;
				tr.setText(c + "");
			} catch (Exception e1) {
				tr.setText("error");
			}
		}
		
	}

}
