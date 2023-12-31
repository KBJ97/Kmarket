<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<c:import url="./aside.jsp" />
						
                        <table>
                            <tbody>
                            <c:forEach var="article" items="${articles}">
                                <tr>
                                <c:if test="${fn:length(articles)ne 0}">
                                    <td><a href="/Kmarket/cs/board/view.do?group=${group}&cate=${cate}&no=${article.no}">${article.title}</a></td>
                                    <td>${article.rdate}</td>
                                </c:if>
                                  <c:if test="${fn:length(articles)eq 0}">
                                	<td>게시글이 없습니다.</td>
                                </c:if>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                      <!-- 페이지 네비게이션 -->
				        <div class="page">
				        	<c:if test="${pageGroupStart > 1}">
				            	<a href="/Kmarket/cs/board/notice/list.do?group=${group}&cate=${cate}&pg=${pageGroupStart - 1}" class="prev">이전</a>
				            </c:if>
				            <c:forEach var="i" begin="${pageGroupStart}" end="${pageGroupEnd}">
				            	<a href="/Kmarket/cs/board/notice/list.do?group=${group}&cate=${cate}&pg=${i}" class="${currentPage == i ? 'on':'off'}">${i}</a>
				            </c:forEach>
				            <c:if test="${pageGroupEnd < lastPageNum}">
				            	<a href="/Kmarket/cs/board/notice/list.do?group=${group}&cate=${cate}&pg=${pageGroupEnd + 1}" class="next">다음</a>
				            </c:if>
				        </div>
                    </article>
                </section>
            </div>
        </section>
<%@ include file="../_footer.jsp" %>