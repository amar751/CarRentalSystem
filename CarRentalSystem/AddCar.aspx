<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="CarRentalSystem.AddCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Car </title>


       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"> </script>

    <style>
        h1 {
            color:white;
        }
        ul {
            background-color:white;
        }
        ul li {
            border:0px solid red;
            height:50px;
            width:120px;
            margin-left:30px;
            display:inline-table;
            list-style:none;
            text-align:center;
            font-size:30px;
            line-height:50px;
            padding:10px;
            color:white;
        }
            ul li:hover {
                background-color:black;
            }
    </style>
</head>
<body style="background-color:cornflowerblue;">

      <h1> Car Rental Management System </h1> 
    <ul>
               <li><a href="Default.aspx">Home</a></li>
        <li><a href="Login.aspx">Login</a></li>
        
        <li><a href="Contact.aspx">Contact</a></li>
    </ul>

    <form id="form1" runat="server">
        
         <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CarNameLabel" runat="server" Text='<%# Eval("CarName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ModelNoLabel" runat="server" Text='<%# Eval("ModelNo") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CarNameTextBox" runat="server" Text='<%# Bind("CarName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ModelNoTextBox" runat="server" Text='<%# Bind("ModelNo") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="CarNameTextBox" runat="server" Text='<%# Bind("CarName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ModelNoTextBox" runat="server" Text='<%# Bind("ModelNo") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CarNameLabel" runat="server" Text='<%# Eval("CarName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ModelNoLabel" runat="server" Text='<%# Eval("ModelNo") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">id</th>
                                                <th runat="server">CarName</th>
                                                <th runat="server">ModelNo</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CarNameLabel" runat="server" Text='<%# Eval("CarName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ModelNoLabel" runat="server" Text='<%# Eval("ModelNo") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString %>" DeleteCommand="DELETE FROM [Car] WHERE [id] = @id" InsertCommand="INSERT INTO [Car] ([CarName], [ModelNo]) VALUES (@CarName, @ModelNo)" SelectCommand="SELECT * FROM [Car] ORDER BY [id] DESC" UpdateCommand="UPDATE [Car] SET [CarName] = @CarName, [ModelNo] = @ModelNo WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CarName" Type="String" />
                            <asp:Parameter Name="ModelNo" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CarName" Type="String" />
                            <asp:Parameter Name="ModelNo" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
            </div>
        </div>
    </form>
    <a href="Dashboard.aspx">Back to Main </a>
</body>
</html>
