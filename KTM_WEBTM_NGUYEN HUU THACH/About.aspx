<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="KTM_WEBTM_NGUYEN_HUU_THACH.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>BaoCuaThach.Net</h1>
        <p class="lead">Báo điện tử hàng đầu Việt Nam. Cập nhập tin tức mới nhất trong ngày.</p>
        
    </div>
    <h3>Tác Giải</h3>
    <p>Những tác giải nổi bậc của Trang Báo Mới</p>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TacGiaID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="462px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TacGiaID" HeaderText="ID" ReadOnly="True" SortExpression="TacGiaID" />
            <asp:BoundField DataField="TenTacGia" HeaderText="Tên Tác Giả" SortExpression="TenTacGia" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaoMoiConnectionString %>" SelectCommand="SELECT [TacGiaID], [TenTacGia], [Email] FROM [TacGia]"></asp:SqlDataSource>
</asp:Content>
