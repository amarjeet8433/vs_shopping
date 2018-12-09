<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h2 style="color:wheat">Add Gender</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Gender Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtGenderName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtGenderName"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>

        <h1 style="color:white">Gender</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default Panel Contents -->
            <div class="panel-heading">All Gender</div>
            <asp:Repeater ID="rptrGender" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Gender</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("GenderID") %></th>
                        <td><%# Eval("GenderName") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    </div>
</asp:Content>

