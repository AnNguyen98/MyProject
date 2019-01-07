package LapTrinhDoHoa;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.swing.JFrame;

public class Ve2 extends JFrame implements Runnable, MouseListener, MouseMotionListener {

	Bong b[] = new Bong[4];
	Rectangle rec = new Rectangle(100, 100, 300, 300);
	BufferedImage img;
	Graphics g2;

	public static void main(String[] args) {
		new Thread(new Ve2()).start();
	}

	public Ve2() {
		img = new BufferedImage(500, 500, BufferedImage.TYPE_4BYTE_ABGR);
		g2 = img.getGraphics();
		this.setTitle("Ve lung tung");
		this.setSize(500, 500);
		this.setDefaultCloseOperation(3);
		for (int i = 0; i < b.length; i++) {
			double x = (i / 4) / 4.0 + 0.1;
			double y = (i % 4) / 4.0 + 0.1;
			b[i] = new Bong(rec.x, rec.y, rec.width, rec.height, 15, x, y);
			b[i].start();
		}
		this.addMouseListener(this);
		this.addMouseMotionListener(this);
		this.setVisible(true);
	}

	public void run() {
		while (true) {
			for (int i = 0; i < b.length; i++)
				for (int j = i + 1; j < b.length; j++) {
					if (vacham(b[i], b[j])) {
						// Xuly
						XulyVaCham(b[i], b[j]);
					}
				}
			try {
				Thread.sleep(10);
			} catch (Exception e) {
			}
		}
	}

	private void XulyVaCham(Bong b1, Bong b2) {
		MyVector o = new MyVector(b1.x - b2.x, b1.y - b2.y);
		o.Norm();
		MyVector v1 = new MyVector(b1.vx, b1.vy);
		MyVector v12 = o.Scale(v1.DotProduce(o));
		MyVector v11 = v1.Sub(v12);

		MyVector v2 = new MyVector(b2.vx, b2.vy);
		MyVector v22 = o.Scale(v2.DotProduce(o));
		MyVector v21 = v2.Sub(v22);

		if (v2.DotProduce(o) > v1.DotProduce(o)) {

			MyVector v1p = v11.Add(v22);
			MyVector v2p = v21.Add(v12);

			b1.vx = v1p.x;
			b1.vy = v1p.y;

			b2.vx = v2p.x;
			b2.vy = v2p.y;
		}
	}

	private boolean vacham(Bong b1, Bong b2) {

		double dis = Distance(b1, b2);

		if (dis < b1.r + b2.r)
			return true;
		return false;
	}

	private double Distance(Bong b1, Bong b2) {
		return Math.sqrt((b1.x - b2.x) * (b1.x - b2.x) + (b1.y - b2.y) * (b1.y - b2.y));
	}
	

	public void paint(Graphics g) {
		g2.setColor(Color.WHITE);
		g2.fillRect(0, 0, this.getWidth(), this.getHeight());
		g2.setColor(Color.gray);
		g2.fillRect(rec.x, rec.y, rec.width, rec.height);
		g2.setColor(Color.BLUE);
		g2.drawRect(rec.x, rec.y, rec.width, rec.height);
		for (int i = 0; i < b.length; i++) {

			int x = (int) (b[i].x - b[i].r);
			int y = (int) (b[i].y - b[i].r);
			int w = (int) (b[i].r * 2);
			g2.setColor(b[i].c);
			g2.fillOval(x, y, w, w);
			g2.setColor(Color.blue);
			g2.drawOval(x, y, w, w);
		}
		g2.setColor(Color.WHITE);
		if (selectedBall != null) {
			g2.drawLine((int) selectedBall.x, (int) selectedBall.y, mx, my);
		}
		
		g.drawImage(img, 0, 0, null);
		try {
			Thread.sleep(50);
			this.repaint();
		} catch (InterruptedException e) {
		}
	}

	Bong selectedBall = null;
	int mx, my;

	@Override
	public void mousePressed(MouseEvent e) {
		// Toa do vua nhan
		int x = e.getX();
		int y = e.getY();
		mx = x;
		my = y;
		for (int i = 0; i < b.length; i++) {
			if ((x - b[i].x) * (x - b[i].x) + (y - b[i].y) * (y - b[i].y) < b[i].r * b[i].r) {
				selectedBall = b[i];
				return;
			}
		}

	}

	@Override
	public void mouseReleased(MouseEvent e) {
		if (selectedBall == null)
			return;
		selectedBall.vx = (selectedBall.x - mx) * 0.03;
		selectedBall.vy = (selectedBall.y - my) * 0.03;

		selectedBall = null;
	}

	@Override
	public void mouseDragged(MouseEvent e) {
		int x = e.getX();
		int y = e.getY();
		mx = x;
		my = y;
		this.repaint();
	}

	@Override
	public void mouseMoved(MouseEvent e) {

	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub

	}

}

class MyVector {
	double x, y;

	public MyVector(double x, double y) {
		this.x = x;
		this.y = y;
	}

	public MyVector Add(MyVector o) {
		return new MyVector(x + o.x, y + o.y);
	}

	public MyVector Sub(MyVector o) {
		return new MyVector(x - o.x, y - o.y);
	}

	public MyVector Scale(double heso) {
		return new MyVector(x * heso, y * heso);
	}

	public double DotProduce(MyVector o) {
		return this.x * o.x + this.y * o.y;
	}

	public void Norm() {
		double l = Math.sqrt(x * x + y * y);
		x /= l;
		y /= l;
	}
}

class Bong extends Thread {
	double x, y, r, vx, vy;
	Color c;
	int x0, y0, w, h;
	double ms = 0.01;
	Random rand = new Random();

	public Bong(int x0, int y0, int w, int h, int r, double bx, double by) {
		this.Init(x0, y0, w, h, r);
		this.x = bx * w + x0;
		this.y = by * h + y0;
	}

	public Bong(int x0, int y0, int w, int h, int r) {
		this.Init(x0, y0, w, h, r);
	}

	public void Init(int x0, int y0, int w, int h, int r) {
		this.x0 = x0;
		this.y0 = y0;
		this.w = w;
		this.h = h;
		this.r = r;
		this.x = rand.nextInt(w - 2 * r) + r + x0;
		this.y = rand.nextInt(h - 2 * r) + r + y0;
		this.vx = 0;
		this.vy = 0;
		double l = Math.sqrt(vx * vx + vy * vy);
		if (l > 0) {
			double vt = rand.nextDouble() + 0.5;
			this.vx /= l * vt;
			this.vy /= l * vt;
		}
		c = new Color(rand.nextInt(256), rand.nextInt(256), rand.nextInt(256));
	}

	public void run() {
		while (true) {
			x += vx;
			y += vy;
			if (x - r < x0)
				vx = Math.abs(vx);
			else  if (x + r > x0 + w)
				vx = -Math.abs(vx);
			if (y - r < y0) 
				vy = Math.abs(vy);
			else if (y + r > y0 + h)
				vy = -Math.abs(vy);

			double ll = Math.sqrt(vx*vx+vy*vy);
			if (ll>0){
				double l=ll;
				if (l<ms) l = 0;
				else l-=ms;
				vx = vx * l / ll;
				vy = vy * l / ll;
			}
			

			try {
				Thread.sleep(10);
			} catch (Exception e) {
			}
		}
	}
}

