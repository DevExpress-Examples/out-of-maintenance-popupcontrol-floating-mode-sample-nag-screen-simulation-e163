<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_FloatingMode" %>

<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxObjectContainer"
    TagPrefix="dxoc" %>

<%@ Register Assembly="System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="System.Web.UI" TagPrefix="cc1" %>

<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxPopupControl"
    TagPrefix="dxpc" %>


<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>PopupControl - Floating Mode Sample ('nag screen' simulation)</title>
    
<script type="text/javascript">
function OnPCInit(){
    // There are some internal functions used in the following code. So, you must understand 
    // that we can't guarantee that their signatures won't be changed in next releases.
    var isNetscapeOrMozilla = (__aspxNetscape || __aspxMozilla);
    if(isNetscapeOrMozilla)
        window.addEventListener("DOMMouseScroll", OnPCUpdatePos, true);
    if(__aspxFirefox){
        _aspxAttachEventToElement(document.documentElement, "scroll", OnPCUpdatePos);
        _aspxAttachEventToElement(window, "scroll", OnPCUpdatePos);
    } else {
        var elementForScrollListener = isNetscapeOrMozilla ? document.documentElement : window;
        _aspxAttachEventToElement(elementForScrollListener, "scroll", OnPCUpdatePos);
    }
    _aspxAttachEventToElement(window, "resize", OnPCUpdatePos); 
}
function OnPCUpdatePos(){
    if(pc1.IsVisible())
        pc1.UpdatePosition();
}
</script>

</head>
<body>
    <form id="form1" runat="server">
    
    <div style="height: 1600px; border: dashed 1px gray; background-color: #eeeeee;">

<dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" 
EnableViewState="false" PopupHorizontalAlign="WindowCenter" AllowDragging="true"
    PopupVerticalAlign="WindowCenter" ShowOnPageLoad="True" ClientInstanceName="pc1" CloseAction="CloseButton" Height="200px" Width="300px">
    
    <ContentCollection>
        <dxpc:PopupControlContentControl runat="server">
            Floating Mode Sample<br />
            ('nag screen' simulation)</dxpc:PopupControlContentControl>
    </ContentCollection>
    <ClientSideEvents Init="OnPCInit" />
    <ContentStyle VerticalAlign="Middle" HorizontalAlign="Center">
    </ContentStyle>
</dxpc:ASPxPopupControl>


    </div>
    </form>
</body>
</html>
