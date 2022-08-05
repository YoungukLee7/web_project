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
				<th>종류</th>
				<th>대인</th>
				<th>청소년</th>
				<th>소인/경로</th>
				<th>비고</th>
			</tr>
			<tr>
				<td>주간권(1일권)</td>
				<td>45,000원</td>
				<td>38,000원</td>
				<td>35,000원</td>
				<td rowspan="2">
					에버랜드 입장<br>
					입장권은 스마트 예약 불가
				</td>
			</tr>
			<tr>
				<td>
					야간권<br>
					(17시~)<br>
					1, 2월 : 16시~
				</td>
				<td>36,000원</td>
				<td>33,000원</td>
				<td>31,000원</td>
			</tr>
		</table>
		
		<table border="1">
		
		<form action="http://localhost:8888/chap02/form/ticket" method="POST">
		
			<tr>
				<th>입장권</th>
				<th>종류</th>
				<th>수량</th>
			</tr>
			<tr>
				<td rowspan="4">
					주간권(1일권)
				</td>
				<td rowspan="4">
					<input type="checkbox" name="kind" id="l-kind" value="ju-l-kind"/> 
					<label for="l-kind">대인</label> <br>
					<input type="checkbox" name="kind" id="m-kind" value="ju-m-kind"/> 
					<label for="m-kind">청소년</label> <br>
					<input type="checkbox" name="kind" id="s-kind" value="ju-s-kind"/> 
					<label for="s-kind">소인/경로</label> <br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count1" id="l-one" value="1"/> 
					<label for="l-one">1명</label> 
					<input type="radio" name="count1" id="l-two" value="2"/> 
					<label for="l-two">2명</label> 
					<input type="radio" name="count1" id="l-three" value="3"/> 
					<label for="l-three">3명</label>
					<input type="radio" name="count1" id="l-four" value="4"/> 
					<label for="l-four">4명</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count2" id="m-one" value="1"/> 
					<label for="m-one">1명</label> 
					<input type="radio" name="count2" id="m-two" value="2"/> 
					<label for="m-two">2명</label> 
					<input type="radio" name="count2" id="m-three" value="3"/> 
					<label for="m-three">3명</label>
					<input type="radio" name="count2" id="m-four" value="4"/> 
					<label for="m-four">4명</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count3" id="s-one" value="1"/> 
					<label for="s-one">1명</label> 
					<input type="radio" name="count3" id="s-two" value="2"/> 
					<label for="s-two">2명</label> 
					<input type="radio" name="count3" id="s-three" value="3"/> 
					<label for="s-three">3명</label>
					<input type="radio" name="count3" id="s-four" value="4"/> 
					<label for="s-four">4명</label>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="구매하기" />
				</td>
			</tr>
			
		</form>
			
		</table>
		
		<table border="1">
		
		<form action="http://localhost:8888/chap02/form/ticket" method="POST">
		
			<tr>
				<th>입장권</th>
				<th>종류</th>
				<th>수량</th>
			</tr>
			<tr>
				<td rowspan="4">
					야간권<br>
					(17시~)<br>
					1, 2월 : 16시~
				</td>
				<td rowspan="4">
					<input type="checkbox" name="kind1" id="l-kind1" value="ni-l-kind"/> 
					<label for="l-kind1">대인</label> <br>
					<input type="checkbox" name="kind1" id="m-kind1" value="ni-m-kind"/> 
					<label for="m-kind1">청소년</label> <br>
					<input type="checkbox" name="kind1" id="s-kind1" value="ni-s-kind"/> 
					<label for="s-kind1">소인/경로</label> <br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count11" id="l-one1" value="1"/> 
					<label for="l-one1">1명</label> 
					<input type="radio" name="count11" id="l-two1" value="2"/> 
					<label for="l-two1">2명</label> 
					<input type="radio" name="count11" id="l-three1" value="3"/> 
					<label for="l-three1">3명</label>
					<input type="radio" name="count11" id="l-four1" value="4"/> 
					<label for="l-four1">4명</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count21" id="m-one1" value="1"/> 
					<label for="m-one1">1명</label> 
					<input type="radio" name="count21" id="m-two1" value="2"/> 
					<label for="m-two1">2명</label> 
					<input type="radio" name="count21" id="m-three1" value="3"/> 
					<label for="m-three1">3명</label>
					<input type="radio" name="count21" id="m-four1" value="4"/> 
					<label for="m-fou1r">4명</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="count31" id="s-one1" value="1"/> 
					<label for="s-one1">1명</label> 
					<input type="radio" name="count31" id="s-two1" value="2"/> 
					<label for="s-two1">2명</label> 
					<input type="radio" name="count31" id="s-three1" value="3"/> 
					<label for="s-three1">3명</label>
					<input type="radio" name="count31" id="s-four1" value="4"/> 
					<label for="s-four1">4명</label>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="구매하기" />
				</td>
			</tr>
			
			</form>
			
		</table>

</body>
</html>