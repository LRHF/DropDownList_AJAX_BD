<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body >
    <form id="form" runat="server">
    <div class="div" >
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
             <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nameCarFactory" DataValueField="id">    </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CarFactory]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:DropDownList ID="DropDownList2" runat="server" Width="100px" DataSourceID="SqlDataSource2" DataTextField="carModel" DataValueField="id">    </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CarModel] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    <br /> 
    </div>
    <div class="div" >

    </div>

    </form>
</body>



</html>
