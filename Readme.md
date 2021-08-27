<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E163)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# PopupControl - Floating Mode Sample ('nag screen' simulation)


<p>In this sample, the popup window's position is not changed when the browser window is resized or its content is scrolled.<br />
This is implemented by calling the ASPxPopupControl's client <strong>UpdatePosition</strong> method on each resizing or scrolling of the browser window. The window's corresponding events (scroll and resize) are processed within the OnPCInit function whose implementation is given for demonstrative purposes.</p>

<br/>


