package LapTrinhGiaoDien;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class TinhToan2 extends JFrame {
	public static void main(String args[]) {
		new TinhToan2();
	}

	public TinhToan2() {
		this.setTitle("Tinh Toan");
		this.setSize(300, 300);
		this.setDefaultCloseOperation(3);
		this.setLayout(null);
		JLabel la = new JLabel("Nhap a:");
		la.setBounds(20, 10, 50, 30);
		this.add(la);
		JLabel lb = new JLabel("Nhap b:");
		lb.setBounds(20, 40, 50, 30);
		this.add(lb);
		JLabel lr = new JLabel("Ket Qua:");
		lr.setBounds(20, 120, 50, 30);
		this.add(lr);
		final JTextField ta = new JTextField();
		ta.setBounds(80, 10, 100, 30);
		this.add(ta);
		final JTextField tb = new JTextField();
		tb.setBounds(80, 40, 100, 30);
		this.add(tb);
		final JTextField tr = new JTextField();
		tr.setBounds(80, 120, 100, 30);
		this.add(tr);

		JButton cong = new JButton("+");
		cong.setBounds(10, 80, 50, 30);
		cong.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try {
					double a = Double.parseDouble(ta.getText());
					double b = Double.parseDouble(tb.getText());
					double c = a + b;
					tr.setText(c + "");
				} catch (Exception e1) {
					tr.setText("error");
				}

			}
		});
		this.add(cong);

		JButton tru = new JButton("-");
		tru.setBounds(65, 80, 50, 30);
		tru.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try {
					double a = Double.parseDouble(ta.getText());
					double b = Double.parseDouble(tb.getText());
					double c = a - b;
					tr.setText(c + "");
				} catch (Exception e1) {
					tr.setText("error");
				}

			}
		});
		this.add(tru);

		JButton nhan = new JButton("*");
		nhan.setBounds(120, 80, 50, 30);
		nhan.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try {
					double a = Double.parseDouble(ta.getText());
					double b = Double.parseDouble(tb.getText());
					double c = a * b;
					tr.setText(c + "");
				} catch (Exception e1) {
					tr.setText("error");
				}

			}
		});
		this.add(nhan);

		JButton chia = new JButton("/");
		chia.setBounds(175, 80, 50, 30);
		chia.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try {
					double a = Double.parseDouble(ta.getText());
					double b = Double.parseDouble(tb.getText());
					double c = a / b;
					tr.setText(c + "");
				} catch (Exception e1) {
					tr.setText("error");
				}

			}
		});
		this.add(chia);

		this.setVisible(true);

	}

}
