<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form</title>
</head>
<body>

		<h3># form tag</h3>
		
		<ul>
			<li>���ο��� submit�� �߻��ϸ� ������ ��� �����Ϳ� �Բ� ������ ��û�� ������ �±�</li>
			<li>�����͸� ������ �� input�±��� name�Ӽ��� key������ �Ѵ�</li>
			<li>����ڰ� �Է��� ������ value������ �մϴ�</li>
			<li>action �Ӽ� : ��� URL�� ��û�� ������ ���´�</li>
			<li>method �Ӽ� : � ������� ��û���� ���´� (GET,POST,PUT,DELETE...)</li>
		</ul>
		
		<h3># Get��� ��û (Servlet����)</h3>
		
		<ul>
			<li>�����Ͱ� URL�ڿ� �پ ��û�� �Բ� ������ ���޵ȴ�. ?key=value&?key=value&...</li> 
			<li>GET����� ����Ǿ ������� ���鸸 �����ؾ� �Ѵ�. (��й�ȣ�� �ȵȴ�)</li>
			<li>����ڰ� �ּҸ� ���� �����Ͽ� �����͸� ������ ���� �����Ƿ� �����ؾ� �Ѵ�</li>
		</ul>
		
		<form action="http://localhost:8888/chap02/form/register" method="GET">
			�̸� : <input type="text" name="name" /> <br>
			���� : <input type="number" name="age" /> <br>
			��й�ȣ : <input type="password" name="pwd" /> <br>
			��� : 
				<input type="checkbox" name="hobby" value="football"/> �౸ <br>
				<input type="checkbox" name="hobby" value="swim"/> ����<br>
				<input type="checkbox" name="hobby" value="surfing"/> ����<br>
				<input type="checkbox" name="hobby" value="baduk"/> �ٵ�<br>
			<input type="submit" value="�����ϱ�" />
		</form>
		
		<h3># Post��� ��û (Servlet����)</h3>
		
		<ul>
			<li>��й�ȣ�� �������� �ʰ� �����ϱ� ���ؼ� Post�� �̿��Ѵ�</li>
		</ul>
		
		<form action="http://localhost:8888/chap02/form/register" method="POST">
			�̸� : <input type="text" name="name" /> <br>
			���� : <input type="number" name="age" /> <br>
			��й�ȣ : <input type="password" name="pwd" /> <br>
			��� : 
				<input type="checkbox" name="hobby" value="football"/> �౸ <br>
				<input type="checkbox" name="hobby" value="swim"/> ����<br>
				<input type="checkbox" name="hobby" value="surfing"/> ����<br>
				<input type="checkbox" name="hobby" value="baduk"/> �ٵ�<br>
			<input type="submit" value="�����ϱ�" />
		</form>
		
		<h3># GET��� ��û (JSP����)</h3>
		
		<!-- URL�� ��� ��δ� ������Ʈ ���� ������ �ƴ϶�
			 ������� �� ������ �ּ�â�� url �����̴�
			 
			 ex: http://localhost:8888/chap02/form/form.jsp�� ��
			 
			../: http://localhost:8888/chap02/
			./ : http://localhost:8888/chap02/form/
			/  : http://localhost:8888/ (���� �������� �ֻ���)
			// : http://
		 -->
		
		<form action="./register.jsp" method="GET">
			�̸� : <input type="text" name="name" /> <br>
			���� : <input type="number" name="age" /> <br>
			��й�ȣ : <input type="password" name="pwd" /> <br>
			��� : 
				<input type="checkbox" name="hobby" value="football"/> �౸ <br>
				<input type="checkbox" name="hobby" value="swim"/> ����<br>
				<input type="checkbox" name="hobby" value="surfing"/> ����<br>
				<input type="checkbox" name="hobby" value="baduk"/> �ٵ�<br>
			<input type="submit" value="�����ϱ�" />
		</form>

</body>
</html>