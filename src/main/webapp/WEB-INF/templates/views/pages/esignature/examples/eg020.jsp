<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../partials/head.jsp"/>

<h4>20. Require Phone Authentication for a Recipient</h4>
<p>Sends an envelope that requires entering a six-digit code from a text message or phone call for the purpose of multifactor authentication.</p>
<p>The envelope includes a PDF file. Anchor text 
    (<a href="https://developers.docusign.com/docs/esign-rest-api/esign101/concepts/tabs/auto-place/">AutoPlace</a>)
    is used to position the signing fields in the documents.</p>

<c:if test="${showDoc}">
    <p><a target='_blank' href='${documentation}'>Documentation</a> about this example.</p>
</c:if>

<p>API method used:
    <a target='_blank' rel="noopener noreferrer" href="https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/create/">Envelopes::create</a>.
</p>

<p>
    View source file <a target="_blank" href="${sourceUrl}">${sourceFile}</a> on GitHub.
</p>


<form class="eg" action="" method="post" data-busy="form">
    
    <div class="form-group">
        <label for="countryCode">Signer Country Code</label>
        <input type="text" class="form-control" id="countryCode" placeholder="1" name="countryCode"
               value="" required>
    </div>

    <div class="form-group">
        <label for="phoneNumber">Signer Phone Number</label>
        <input type="text" class="form-control" id="phoneNumber" placeholder="4155551212" name="phoneNumber"
               value="" required>
    </div>

    <div class="form-group">
        <label for="signerEmail">Signer Email</label>
        <input type="email" class="form-control" id="signerEmail" name="signerEmail"
               aria-describedby="emailHelp" placeholder="pat@example.com" required
               value="${locals.dsConfig.signerEmail}">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="signerName">Signer Name</label>
        <input type="text" class="form-control" id="signerName" placeholder="Pat Johnson" name="signerName"
               value="${locals.dsConfig.signerName}" required>
    </div>
    <input type="hidden" name="_csrf" value="${csrfToken}">
    <button type="submit" class="btn btn-docu">Submit</button>
</form>

<jsp:include page="../../../partials/foot.jsp"/>
