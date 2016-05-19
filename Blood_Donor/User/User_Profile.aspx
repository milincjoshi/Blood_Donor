<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="Blood_Donor.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-lg-12 fontSize2em">
            <!--Profile Image-->
            <div class="col-lg-3">
                <asp:Image ID="userImage" runat="server" CssClass="col-lg-8 img-responsive img-rounded" />
                <br />
                <asp:Label ID="userBloodGroup" runat="server" CssClass="fontSize5em" />
            </div>
            <div class="col-lg-9">
                <!--Name-->
                <div class="col-lg-12 margin1">
                        <div class="col-lg-2">
                        <asp:Label ID="userFirstName" runat="server" Text="First Name"/>
                    </div>
                    <div class="col-lg-10">
                        <asp:Label ID="userLastName" runat="server" Text="Last Name"/>
                    </div>
                </div>
                <!--End Name-->
                
                <!--Email-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userEmail" runat="server" Text="Email"/>
                </div>
                <!--End Email-->

                <!--Phone-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userPhone" runat="server" Text="Phone"/>
                </div>
                <!--End Phone-->

                <!--AddressLine1-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userAddressLine1" runat="server" Text="AddressLine1" />
                </div>
                <!--End AddressLine1-->

                <!--AddressLine2-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userAddressLine2" runat="server" Text="AddressLine2" />
                </div>
                <!--End AddressLine2-->

                <!--City-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userCity" runat="server" Text="City" />
                </div>
                <!--End City-->

                <!--State-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userState" runat="server" Text="State" />
                </div>
                <!--End State-->

                <!--Country-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userCountry" runat="server" Text="Country" />
                </div>
                <!--End Country-->

                <!--PinCode-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="userPinCode" runat="server" Text="PinCode" />
                </div>
                <!--End PinCode-->

            </div>
        </div>
    </div>
</asp:Content>
