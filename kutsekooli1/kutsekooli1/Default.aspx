<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kutsekooli1._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Noorem Tarkvaraarendaja õppeained koos õpetajaga</h1>

        <br />
        <h1>Uue õppeaine lisamine</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="aineId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="aineId" HeaderText="aineId" ReadOnly="True" SortExpression="aineId" />
                <asp:BoundField DataField="aineNimetus" HeaderText="aineNimetus" SortExpression="aineNimetus" />
                <asp:BoundField DataField="kirjandus" HeaderText="kirjandus" SortExpression="kirjandus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekooliAntonovConnectionString1 %>" DeleteCommand="DELETE FROM [AINED] WHERE [aineId] = @aineId" InsertCommand="INSERT INTO [AINED] ([aineNimetus], [kirjandus]) VALUES (@aineNimetus, @kirjandus)" SelectCommand="SELECT AINED.aineId, AINED.aineNimetus, AINED.kirjandus FROM AINED INNER JOIN opetaja ON AINED.opetajaID = opetaja.opetajaID" UpdateCommand="UPDATE [AINED] SET [aineNimetus] = @aineNimetus, [kirjandus] = @kirjandus WHERE [aineId] = @aineId">
            <DeleteParameters>
                <asp:Parameter Name="aineId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="aineNimetus" Type="String" />
                <asp:Parameter Name="kirjandus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="aineNimetus" Type="String" />
                <asp:Parameter Name="kirjandus" Type="String" />
                <asp:Parameter Name="aineId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSourceNEW" Height="50px" Width="269px">
            <Fields>
                <asp:BoundField DataField="opilaneID" HeaderText="opilaneID" InsertVisible="False" ReadOnly="True" SortExpression="opilaneID" />
                <asp:BoundField DataField="ENimi" HeaderText="ENimi" SortExpression="ENimi" />
                <asp:BoundField DataField="PNimi" HeaderText="PNimi" SortExpression="PNimi" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSourceNEW" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekooliAntonovConnectionString1 %>" SelectCommand="SELECT * FROM [opilane]"></asp:SqlDataSource>
    </div>

        
</asp:Content>
