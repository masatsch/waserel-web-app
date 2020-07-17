<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="id" value="${param.id}" />

<!DOCTYPE html>
<html lang="ja">
<jsp:include page="./components/head.jsp" flush="true" />

<script>
    function addCount() {
        var count = Number(document.getElementsByClassName("amount")[0].textContent);
        if (count < 100) {
            count = count + 1;
            document.getElementsByClassName("amount")[0].textContent = count;
        }
    }
    function subtractCount() {
        var count = Number(document.getElementsByClassName("amount")[0].textContent);
        if (count > 1) {
            count = count - 1;
            document.getElementsByClassName("amount")[0].textContent = count;
        }
    }
</script>

<body>
    <jsp:include page="./components/header.jsp" flush="true" />
    <jsp:include page="./components/pagetitle.jsp?title=CONFIRMATION" flush="true" />
    <form class="confirmation" action="controller/confirm-controller.jsp" method="POST">
        <div class="field">
            <label class="label">name</label>
            <div class="control">
                <input class="input is-rounded" name="identity" type="text" placeholder="山田 太郎">
            </div>
        </div>
        <div class="field">
            <label class="label">address</label>
            <div class="control">
                <input class="input is-rounded" name="address" type="text" placeholder="東京都新宿区大久保1-1-1">
            </div>
        </div>
        <div class="field">
            <label class="label">payment</label>
            <div class="control select-button">
                <div class="select is-large">
                  <select name="payment">
                    <option selected value="credit">クレジットカード</option>
                    <option value="convenience">コンビニ振込</option>
                    <option value="applePay">Apple Pay</option>
                  </select>
                </div>
                <span class="icon is-large is-left">
                  <i class="fas fa-globe"></i>
                </span>
              </div>
        </div>

        <div class="field">
            <div class="control">
                <button class="button is-rounded" type="submit">GO</button>
            </div>
        </div>
    </form>
    
</body>
</html>