<%@ page session="false" %>
<html>
<head>
    <title>Neo4j Console</title>
    <script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
//		var base="http://localhost:8080";
		var base="http://console.neo4j.org";
		function start() {
			var geoff=encodeURIComponent($("#geoff").val().replace(/\s*\n\s*/g,";"));
			var cypher=encodeURIComponent($("#cypher").val());
			console.log(base+"?init="+geoff+"&query="+cypher);
			$("#window").attr("src",base+"?init="+geoff+"&query="+cypher);
			return false;
		}
	</script>
</head>
<body>
	<div>
		<textarea rows="10" cols="80" id="geoff">
(Neo) {"name" : "Neo"}
(Trinity) {"name" : "Trinity"}
(Neo)-[:LOVES]->(Trinity)
		</textarea><br/>
		<textarea rows="10" cols="80" id="cypher">
start neo=node(1) match neo-[r]-other return neo,type(r), other
		</textarea><br/>
		<button id="load" onclick="start();">Load Database</button>
	</div>
	<iframe src="" width="500" height="400" id="window"/>
</body>
</html>