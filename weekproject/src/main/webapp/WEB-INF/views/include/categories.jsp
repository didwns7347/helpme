<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">분류</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="${pageContext.request.contextPath }/board/find?category=clean">청소</a>
                  </li>
                  <li>
                   <a href="${pageContext.request.contextPath }/board/find?category=pet">애완</a>
                  </li>
                  <li>
                   <a href="${pageContext.request.contextPath }/board/find?category=move">이사</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                     <a href="${pageContext.request.contextPath }/board/find?category=farmming">농사</a>
                  </li>
                  <li>
                     <a href="${pageContext.request.contextPath }/board/find?category=office">사무</a>
                  </li>
                  <li>
                     <a href="${pageContext.request.contextPath }/board/find?category=etc">기타</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
            