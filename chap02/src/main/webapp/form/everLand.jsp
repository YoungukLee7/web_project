<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ever Land</title>
</head>
<body>

		<table border="1">
			<tr>
				<th>����</th>
				<th>����</th>
				<th>û�ҳ�</th>
				<th>����/���</th>
				<th>���</th>
			</tr>
			<tr>
				<td>�ְ���(1�ϱ�)</td>
				<td>45,000��</td>
				<td>38,000��</td>
				<td>35,000��</td>
				<td rowspan="2">
					�������� ����<br>
					������� ����Ʈ ���� �Ұ�
				</td>
			</tr>
			<tr>
				<td>
					�߰���<br>
					(17��~)<br>
					1, 2�� : 16��~
				</td>
				<td>36,000��</td>
				<td>33,000��</td>
				<td>31,000��</td>
			</tr>
		</table>
		
		<table border="1">
		
		<form action="http://localhost:8888/chap02/form/ticket" method="POST">
		
			<tr>
				<th>�����</th>
				<th>����</th>
				<th>����</th>
			</tr>
			<tr>
				<td rowspan="4">
					�ְ���(1�ϱ�)
				</td>
				<td rowspan="4">
					<input type="checkbox" name="kind" id="l-kind" value="ju-l-kind"/> 
					<label for="l-kind">����</label> <br>
					<input type="checkbox" name="kind" id="m-kind" value="ju-m-kind"/> 
					<label for="m-kind">û�ҳ�</label> <br>
					<input type="checkbox" name="kind" id="s-kind" value="ju-s-kind"/> 
					<label for="s-kind">����/���</label> <br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count1" id="l-one" value="1"/> 
					<label for="l-one">1��</label> 
					<input type="radio" name="count1" id="l-two" value="2"/> 
					<label for="l-two">2��</label> 
					<input type="radio" name="count1" id="l-three" value="3"/> 
					<label for="l-three">3��</label>
					<input type="radio" name="count1" id="l-four" value="4"/> 
					<label for="l-four">4��</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count2" id="m-one" value="1"/> 
					<label for="m-one">1��</label> 
					<input type="radio" name="count2" id="m-two" value="2"/> 
					<label for="m-two">2��</label> 
					<input type="radio" name="count2" id="m-three" value="3"/> 
					<label for="m-three">3��</label>
					<input type="radio" name="count2" id="m-four" value="4"/> 
					<label for="m-four">4��</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count3" id="s-one" value="1"/> 
					<label for="s-one">1��</label> 
					<input type="radio" name="count3" id="s-two" value="2"/> 
					<label for="s-two">2��</label> 
					<input type="radio" name="count3" id="s-three" value="3"/> 
					<label for="s-three">3��</label>
					<input type="radio" name="count3" id="s-four" value="4"/> 
					<label for="s-four">4��</label>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="�����ϱ�" />
				</td>
			</tr>
			
		</form>
			
		</table>
		
		<table border="1">
		
		<form action="http://localhost:8888/chap02/form/ticket" method="POST">
		
			<tr>
				<th>�����</th>
				<th>����</th>
				<th>����</th>
			</tr>
			<tr>
				<td rowspan="4">
					�߰���<br>
					(17��~)<br>
					1, 2�� : 16��~
				</td>
				<td rowspan="4">
					<input type="checkbox" name="kind1" id="l-kind1" value="ni-l-kind"/> 
					<label for="l-kind1">����</label> <br>
					<input type="checkbox" name="kind1" id="m-kind1" value="ni-m-kind"/> 
					<label for="m-kind1">û�ҳ�</label> <br>
					<input type="checkbox" name="kind1" id="s-kind1" value="ni-s-kind"/> 
					<label for="s-kind1">����/���</label> <br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count11" id="l-one1" value="1"/> 
					<label for="l-one1">1��</label> 
					<input type="radio" name="count11" id="l-two1" value="2"/> 
					<label for="l-two1">2��</label> 
					<input type="radio" name="count11" id="l-three1" value="3"/> 
					<label for="l-three1">3��</label>
					<input type="radio" name="count11" id="l-four1" value="4"/> 
					<label for="l-four1">4��</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count21" id="m-one1" value="1"/> 
					<label for="m-one1">1��</label> 
					<input type="radio" name="count21" id="m-two1" value="2"/> 
					<label for="m-two1">2��</label> 
					<input type="radio" name="count21" id="m-three1" value="3"/> 
					<label for="m-three1">3��</label>
					<input type="radio" name="count21" id="m-four1" value="4"/> 
					<label for="m-fou1r">4��</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count31" id="s-one1" value="1"/> 
					<label for="s-one1">1��</label> 
					<input type="radio" name="count31" id="s-two1" value="2"/> 
					<label for="s-two1">2��</label> 
					<input type="radio" name="count31" id="s-three1" value="3"/> 
					<label for="s-three1">3��</label>
					<input type="radio" name="count31" id="s-four1" value="4"/> 
					<label for="s-four1">4��</label>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="�����ϱ�" />
				</td>
			</tr>
			
			</form>
			
		</table>

</body>
</html>