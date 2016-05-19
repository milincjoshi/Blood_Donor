<%@ Page Title="" Language="C#" MasterPageFile="~/BloodBank/BloodBank.Master" AutoEventWireup="true" CodeBehind="BloodBank_Profile.aspx.cs" Inherits="Blood_Donor.BloodBank_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-lg-12 fontSize2em">
            <!--Profile Image-->
            <div class="col-lg-3">
                <asp:Image ID="bloodbankImage" runat="server" CssClass="col-lg-8 img-responsive img-rounded" />
            </div>
            <div class="col-lg-9">
                <!--Name-->
                <div class="col-lg-12 margin1">
                    <div class="col-lg-2">
                        <asp:Label ID="bloodbankName" runat="server" Text="First Name"/>
                </div>
                </div>
                <!--End Name-->
                
                <!--Email-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankEmail" runat="server" Text="Email"/>
                </div>
                <!--End Email-->

                <!--Phone-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankPhone" runat="server" Text="Phone"/>
                </div>
                <!--End Phone-->

                <!--AddressLine1-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankAddressLine1" runat="server" Text="AddressLine1" />
                </div>
                <!--End AddressLine1-->

                <!--AddressLine2-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankAddressLine2" runat="server" Text="AddressLine2" />
                </div>
                <!--End AddressLine2-->

                <!--City-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankCity" runat="server" Text="City" />
                </div>
                <!--End City-->

                <!--State-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankState" runat="server" Text="State" />
                </div>
                <!--End State-->

                <!--Country-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankCountry" runat="server" Text="Country" />
                </div>
                <!--End Country-->

                <!--PinCode-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="bloodbankPinCode" runat="server" Text="PinCode" />
                </div>
                <!--End PinCode-->

            </div>
        </div>
    </div>
</asp:Content>
