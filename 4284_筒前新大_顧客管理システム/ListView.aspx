<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListView.aspx.vb" Inherits="_4284_筒前新大_顧客管理システム.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CustomerID" GroupItemCount="3" InsertItemPosition="FirstItem">
            
            
            
            <EditItemTemplate>
                <td runat="server" style="">
                    <br />
                    社員ID:
                    <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
                    <br />
                    氏名:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    顧客分類:
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Name" 
                            DataValueField="CustomerType" SelectedValue='<%# Bind("CustomerType") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
                    <br />
                    誕生日:
                   <asp:Calendar ID="Calendar1" runat="server" 
                            SelectedDate='<%# Bind("Birthday") %>' VisibleDate='<%# Eval("Birthday") %>'>
                    </asp:Calendar>
                    <br />
                    住所:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    電話番号:
                    <asp:TextBox ID="TelNoTextBox" runat="server" Text='<%# Bind("TelNo") %>' />
                    <br />
                    性別：
                    <asp:RadioButtonList ID="RadioButton1" runat="server" 
                            SelectedValue='<%# Bind("Sex") %>'>
                        <asp:ListItem Text="男性" Value="True" />
                        <asp:ListItem Text="女性" Value="False" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="性別を選択してください" ControlToValidate="RadioButton1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>データは返されませんでした。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>

             <EmptyItemTemplate>
                 <td runat="server" />
            </EmptyItemTemplate>

             <GroupTemplate>
                    <tr>
                        <span runat="server" id="itemPlaceholder" />
                    </tr>
            </GroupTemplate>
            <InsertItemTemplate>

                <td runat="server" style="">
                    <br />
                    社員ID:
                    <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                    <br />
                    氏名:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    顧客分類:
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Name" 
                            DataValueField="CustomerType" SelectedValue='<%# Bind("CustomerType") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
                    <br />
                    誕生日:
                    <asp:Calendar ID="Calendar1" runat="server" 
                            SelectedDate='<%# Bind("Birthday") %>' VisibleDate="1980/1/1">
                        </asp:Calendar>
                    住所:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    電話番号:
                    <asp:TextBox ID="TelNoTextBox" runat="server" Text='<%# Bind("TelNo") %>' />
                    <br />
                    性別：
                     <asp:RadioButtonList ID="RadioButton1" runat="server" 
                            SelectedValue='<%# Bind("Sex") %>'>
                        <asp:ListItem Text="男性" Value="True" />
                        <asp:ListItem Text="女性" Value="False" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="性別を選択してください" ControlToValidate="RadioButton1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    <br />
                    社員ID:
                    <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                    <br />
                    氏名:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    顧客分類:
                    <asp:Label ID="CustomerTypeLabel" runat="server" Text='<%# Eval("CustomerType") %>' />
                    <br />
                    誕生日:
                    <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday", "{0:yyyy/MM/dd}") %>' />
                    住所:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    電話番号:
                    <asp:Label ID="TelNoLabel" runat="server" Text='<%# Eval("TelNo") %>' />
                    <br />
                    性別：
                    <asp:Label ID="SexLabel" runat="server"
                   Text='<%#IIf(Eval("Sex"), "男性", "女性") %>'> </asp:Label>
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                
                <table border="1">
                        <span runat="server" id="groupPlaceholder" />
                    </table>
                    <div>
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button"
                                    ShowFirstPageButton="True"
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button"
                                    ShowLastPageButton="True"
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">TypeName:
                    <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Eval("TypeName") %>' />
                    <br />
                    CustomerID:
                    <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    CustomerType:
                    <asp:Label ID="CustomerTypeLabel" runat="server" Text='<%# Eval("CustomerType") %>' />
                    <br />
                    Birthday:
                    <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    TelNo:
                    <asp:Label ID="TelNoLabel" runat="server" Text='<%# Eval("TelNo") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Customers
WHERE (CustomerID=@CustomerID)" InsertCommand="INSERT INTO Customers(
CustomerID, Name, CustomerType, Birthday, Address, TelNo, Sex)
VALUES(@CustomerID, @Name, @CustomerType, @Birthday, @Address, @TelNo, @Sex)" SelectCommand="SELECT Type.Name AS TypeName, Customers.*  FROM Type INNER JOIN Customers ON Type.CustomerType = Customers.CustomerType" UpdateCommand="UPDATE Customers 
SET Name = @Name, CustomerType=@CustomerType, Birthday=@Birthday, Address=@Address, TelNo=@TelNo, Sex=@Sex
WHERE (CustomerID=@CustomerID)">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="CustomerType" />
                <asp:Parameter Name="Birthday" />
                <asp:Parameter Name="Address" />
                <asp:Parameter Name="TelNo" />
                <asp:Parameter Name="Sex" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="CustomerType" />
                <asp:Parameter Name="Birthday" />
                <asp:Parameter Name="Address" />
                <asp:Parameter Name="TelNo" />
                <asp:Parameter Name="Sex" />
                <asp:Parameter Name="CustomerID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
