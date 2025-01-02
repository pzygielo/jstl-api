<%--

    Copyright (c) 2003, 2018 Oracle and/or its affiliates. All rights reserved.

    This program and the accompanying materials are made available under the
    terms of the Eclipse Public License v. 2.0, which is available at
    http://www.eclipse.org/legal/epl-2.0.

    This Source Code may also be made available under the following Secondary
    Licenses when the conditions for such availability set forth in the
    Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
    version 2 with the GNU Classpath Exception, which is available at
    https://www.gnu.org/software/classpath/license.html.

    SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="fmt_rt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="tck" uri="http://java.sun.com/jstltck/jstltck-util" %>
<tck:test testName="positiveFNScopeTest">
    <fmt:setLocale value="en_US"/>
    <!-- EL: Validate the explicit/implicit behavior of the
             action when scope is and isn't provided -->
    <fmt:formatNumber value="12345" var="iPage"/>
    <fmt:formatNumber value="12345" var="ePage" scope="page"/>
    <fmt:formatNumber value="12345" var="eRequest" scope="request"/>
    <fmt:formatNumber value="12345" var="eSession" scope="session"/>
    <fmt:formatNumber value="12345" var="eApplication" scope="application"/>
    <tck:checkScope varName="iPage"/>
    <tck:checkScope varName="ePage"/>
    <tck:checkScope varName="eRequest" inScope="request"/>
    <tck:checkScope varName="eSession" inScope="session"/>
    <tck:checkScope varName="eApplication" inScope="application"/>
    <c:remove var="eApplication" scope="application"/>

    <!-- RT: Validate the explicit/implicit behavior of the
             action when scope is and isn't provided -->
    <fmt_rt:formatNumber value="12345" var="riPage"/>
    <fmt_rt:formatNumber value="12345" var="rePage" scope="page"/>
    <fmt_rt:formatNumber value="12345" var="reRequest" scope="request"/>
    <fmt_rt:formatNumber value="12345" var="reSession" scope="session"/>
    <fmt_rt:formatNumber value="12345" var="reApplication" scope="application"/>
    <tck:checkScope varName="riPage"/>
    <tck:checkScope varName="rePage"/>
    <tck:checkScope varName="reRequest" inScope="request"/>
    <tck:checkScope varName="reSession" inScope="session"/>
    <tck:checkScope varName="reApplication" inScope="application"/>
    <c:remove var="reApplication" scope="application"/>
</tck:test>
