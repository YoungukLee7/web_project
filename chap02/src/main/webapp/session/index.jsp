<%@page import="javax.tools.DocumentationTool.Location"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Index</title>
</head>
<body>

		<h3># Http Session</h3>
		
		<ol>
			<li>�� ������ ó�� �����ϴ� ������� ��Ű�� ����ID�� �߰��Ѵ�.</li>
			<li>�� ��, ����ID�� �Ժη� ����/���� �ϱ� ���� ����� ���̾�� �Ѵ�.</li>
			<li>������� ��Ű�� ����� ����ID�� �ش� ����ڰ� ��û�� ���������� �Բ� �Ƿ����� �ȴ�.</li>
			<li>��Ű�� ����� ����ID�� �⺻������ ������� �� �������� ����ɶ����� �����ȴ�.
				(���� ������ ������ �� �ִ�)</li>
			<li>���ǿ� �����͸� �����ϴ� ���� ������ �����͸� �����ϴ� ��������,
				���ǿ� �ʹ� ���� �����͸� �����ϴ� ���� �����ؾ� �Ѵ�.</li>
		</ol>
		
		<h3># ���� ��Ʈ����Ʈ �߰��ϱ�</h3>
		
		<form action="./add.jsp" method="POST" id="attrAddForm">
			<input type="text" name="key" placeholder="Input Key" autocomplete="off"/>
			<input type="text" name="value" placeholder="Input Value" autocomplete="off"/>
		</form>
		
		<!-- form �ٱ��� �ش� form �Ҽ��� input �±׸� �߰��� ���� �ִ� -->
		<!-- ��ġ�� �����Ӱ� ��ġ�� �� �ִ� ������ �־ ���� ���ֱ⵵ �Ѵ� (form="attrAddForm") -->
		<input type="number" name="age" form="attrAddForm" placeholder="Input Age" disabled/>
		<input type="submit" value="������" form="attrAddForm"/>
		
		<hr>
		
		<%
				// ���� ���ǿ� �ִ� ��� ���� ��Ʈ����Ʈ���� html�� ���
					
					// ���ǿ� �ִ� ��� ��Ʈ����Ʈ�� �̸����� ����
					java.util.Enumeration<String> attrNames = session.getAttributeNames();
						
					// ���� ���(��Ʈ����Ʈ �̸�)�� ������ �ݺ�
					
					out.print("<table border=\"1\"><tr><th>Key</th><th>Value</th>"
							+ "<th>�� ����</th><th>����</th></tr>");
					while (attrNames.hasMoreElements()) {
						String attrName = attrNames.nextElement(); // ��Ʈ����Ʈ �̸��� �ϳ� ����

						if (attrName != null) {
							out.print(String.format("<tr><td>%s</td><td>%s</td>"
									
							+ "<td><form action=\"/chap02/session/attribute/modify\" method=\"POST\">"		
							+ "<input type=\"text\" name=\"value\">"
							+ "<input type=\"hidden\" name=\"key\" value=\"%s\">"
							+ "<button type=\"submit\">����</button></form></td>"
							
							
							+ "<td><form action=\"/chap02/session/attribute/delete\" method=\"POST\">" 
							+ "<input type=\"hidden\" name=\"key\" value=\"%s\">"
							+ "<input type=\"submit\" value=\"����\"></form></td></tr>",
							attrName, session.getAttribute(attrName), attrName, attrName));
						}
					}
					out.print("</table>");
		%>
				<!-- �ٸ� ���� ����� -->
				<!-- data-attr-name=\"%s\" -->
				<!-- �Ʒ� ��ũ��Ʈ�� �̿� -->
				<!-- onclick=\"deletBtnAction('%s')\" -->
				<!-- <form id="deleteForm" action="/chap02/session/attredute" method="DELETE"></form> -->
				
				
		<script>
			function deletBtnAction(attrName) {
				location.href='/chap02/session/attribute/modify?key=' + attrName;
			}
			
			
			
				
		
		</script>





</body>
</html>