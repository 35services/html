# HTML sniplets

## Donate
Using `dialog` https://developer.mozilla.org/de/docs/Web/HTML/Reference/Elements/dialog

- [Donate Page (Direct iFrame)](donate.html) - Direct donation page with embedded iframe (includes payment permission for Apple Pay/Google Pay)
   - ![Dialog with iframe](screenshots/dialog_with_iframe_0.1.png)
   - Note: The iframe includes `allow="payment"` attribute to enable Payment Request API (Apple Pay/Google Pay) without browser console violations
- [Donate Page (JavaScript Embed)](donate_with_script.html) - Direct donation page using betterplace.org's official JavaScript embed code

## Technical Notes

### Payment Permissions Policy
The `donate.html` page uses an iframe with the `allow="payment"` attribute to grant the embedded content permission to use the Payment Request API. This is required for modern browsers to allow Apple Pay and Google Pay functionality without triggering permissions policy violations.

Without this attribute, you may see console errors like:
```
[Violation] Permissions policy violation: payment is not allowed in this document.
```

Reference: [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy)
