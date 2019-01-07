package CoCaro;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;

public class GameCaro extends JFrame implements MouseListener{

	public static void main(String[] args) {
		new GameCaro();
	}
	int n = 15; //so o
	int s = 35; //kich thuoc 1 o
	int ox = 50;
	int oy = 50;
	List<Point> dadanh = new ArrayList<Point>();
	boolean isFinish = false;
	
	public GameCaro(){
		this.setTitle("Game Co-Ca-Ro");
		this.setSize(n*s+2*ox, n*s+2*oy);
		this.setDefaultCloseOperation(3);
		this.addMouseListener(this);
		
		this.setVisible(true);
	}
	
	public void paint(Graphics g){
		
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, this.getWidth(), this.getHeight());
		
		g.setColor(Color.BLACK);
		for (int i=0;i<=n;i++){
			//Ve duong ngang
			g.drawLine(ox, oy+i*s, ox+n*s, oy+i*s);
			//Ve duong doc
			g.drawLine(ox+i*s, oy, ox+i*s, oy+n*s);
		}
		g.setFont(new Font("arial", Font.BOLD, s));
		for (int i=0;i<dadanh.size();i++){
			String st = "o";
			Color c = Color.BLUE;
			if (i%2==1) {
				st = "x";
				c = Color.RED;
			}
			int x = dadanh.get(i).x*s+ox + s - s/2 -s/4;
			int y = dadanh.get(i).y*s+oy + s - s/2 +s/4;
			g.setColor(c);
			g.drawString(st, x, y);
		}
		if (isFinish){
			String st = "o";
			if (dadanh.size()%2==1){
				st = "x";
			}
			g.drawString(st+" won!!", ox*2, this.getWidth()/2);
		}
	
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		if (isFinish) return;
		int x = e.getX();
		int y = e.getY();
		if (x<ox || x>=ox+s*n) return;
		if (y<oy || y>=oy+s*n) return;
		
		int ix = (x - ox)/s;
		int iy = (y - oy)/s;
		for (Point p : dadanh) {
			if (p.x == ix && p.y== iy) return;
		}
		
		dadanh.add(new Point(ix, iy));
		if (isWon(ix,iy)) isFinish = true;
		this.repaint();
		
		System.out.println(ix+","+iy);
		
	}

	private boolean isWon(int ix, int iy) {
		int [][] a = new int[n][n];
		for (int i=0;i<dadanh.size();i++){
			Point p = dadanh.get(i);
			a[p.x][p.y] = i%2+1;
		}
		int dx[] = {1,1,1,0};
		int dy[] = {-1,0,1,1};
		for (int t=0;t<dx.length;t++){
			int x = ix;
			int y = iy;
			while (true){
				if (x-dx[t]>=0 && y-dy[t]>=0 
						&& x-dx[t]<n && y-dy[t]<n
						&& a[x-dx[t]][y-dy[t]]==a[ix][iy]){
					x-=dx[t];
					y-=dy[t];
				} else break;
			}
			int count = 1;
			while (true){
				if (x+dx[t]<n && y+dy[t]<n 
						&& x+dx[t]>=0 && y+dy[t]>=0 
						&& a[x+dx[t]][y+dy[t]]==a[ix][iy]){
					x+=dx[t];
					y+=dy[t];
					count++;
				} else break;
			}
			if (count >=5) return true;
		}
		
		return false;
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
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
