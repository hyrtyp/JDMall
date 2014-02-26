.class public Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/UpdateOrderInfoInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;
    }
.end annotation


# static fields
.field public static final INVOINCE_TYPES_CAMPANY:I = 0x5

.field public static final INVOINCE_TYPES_PERSONAL:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field bCompany:Z

.field bPersonel:Z

.field private bookInvoinceLayout:Landroid/widget/LinearLayout;

.field private generalInvoinceLayout:Landroid/widget/LinearLayout;

.field private hasInvoiceBook:Z

.field private hasInvoiceGeneral:Z

.field private invoiceContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceContentsBook:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceHeaderTypeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;

.field private invoiceTypesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isNoRegisterOrder:Z

.field private itemsBook:[Ljava/lang/String;

.field private itemsGeneral:[Ljava/lang/String;

.field private jbBody:Lorg/json/JSONObject;

.field private jbCartStr:Lorg/json/JSONObject;

.field private jbOrderStr:Lorg/json/JSONObject;

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mBook:Landroid/widget/TextView;

.field private mBook2:Landroid/widget/ImageButton;

.field private mCompanyEdt:Landroid/widget/EditText;

.field private mConfirm:Landroid/widget/Button;

.field private mGeneral:Landroid/widget/TextView;

.field private mGeneral2:Landroid/widget/ImageButton;

.field private mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

.field private mReceiptType:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field nBookSelected:I

.field nBookSelectedID:I

.field nGeneralSelected:I

.field nGeneralSelectedID:I

.field private sCompanyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 46
    const-class v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->TAG:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelected:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelectedID:I

    iput v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelectedID:I

    .line 60
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bPersonel:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    .line 63
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceBook:Z

    .line 64
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z

    .line 65
    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    .line 66
    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->isNoRegisterOrder:Z

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showCompanyTextView(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook2:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->setNewGeneral(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->setNewBook(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mReceiptType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceBook:Z

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bookInvoinceLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->createBookAlertDiglog()V

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z

    return v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->generalInvoinceLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Lcom/jingdong/common/entity/OrderInvoiceInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral2:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceBook:Z

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->addRadioGroup()V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceTypesView()V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceBookView()V

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceGeneralView()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->createGeneralAlertDiglog()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    return-object v0
.end method

.method private addRadioGroup()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 154
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x64

    invoke-virtual {v6, v8, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    const v6, 0x7f0c05fe

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 156
    .local v0, group:Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 157
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 159
    .local v3, headerSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 187
    .end local v3           #headerSize:I
    .end local v4           #i:I
    :cond_0
    return-void

    .line 160
    .restart local v3       #headerSize:I
    .restart local v4       #i:I
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 161
    .local v1, headerBaseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, headerName:Ljava/lang/String;
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 163
    .local v5, radio:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v6, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v7

    invoke-direct {v6, p0, v7}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 169
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    if-eqz v6, :cond_3

    .line 170
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 171
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 173
    const-string v6, "\u5355\u4f4d"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 175
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 176
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    iput-boolean v9, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    .line 159
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_4
    iput-boolean v8, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    goto :goto_1
.end method

.method private createBookAlertDiglog()V
    .locals 9

    .prologue
    .line 316
    const-string v5, "\u56fe\u4e66\u7c7b\u578b"

    .line 317
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, oldSendTime:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 320
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 321
    .local v3, size:I
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 332
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_0
    :goto_1
    move-object v4, v2

    .line 334
    .local v4, temp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 336
    iget v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 337
    const/4 v6, 0x4

    iput v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    .line 339
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    new-instance v8, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;

    invoke-direct {v8, p0, v4}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    return-void

    .line 323
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #temp:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1           #i:I
    .end local v3           #size:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private createGeneralAlertDiglog()V
    .locals 9

    .prologue
    .line 271
    const-string v5, "\u975e\u56fe\u4e66\u7c7b\u578b"

    .line 272
    .local v5, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 273
    .local v2, oldSendTime:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 276
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 277
    .local v3, size:I
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 288
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_0
    :goto_1
    move-object v4, v2

    .line 290
    .local v4, temp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelected:I

    new-instance v8, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$6;

    invoke-direct {v8, p0, v4}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 312
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    return-void

    .line 279
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #temp:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1           #i:I
    .end local v3           #size:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private getCartItemInfo()V
    .locals 6

    .prologue
    .line 566
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_1

    .line 567
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v1, sku:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 570
    .local v2, temp:Lorg/json/JSONArray;
    :try_start_0
    const-string v3, "Id"

    sget-wide v4, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 571
    const-string v3, "num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 573
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v4, "TheSkus"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 574
    .restart local v1       #sku:Lorg/json/JSONObject;
    .restart local v2       #temp:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-eqz v3, :cond_0

    .line 578
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbCartStr:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f0c05ff

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bookInvoinceLayout:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f0c0600

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->generalInvoinceLayout:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0c02c1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mReceiptType:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0c05f9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0c05fa

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0c05fb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook2:Landroid/widget/ImageButton;

    .line 143
    const v0, 0x7f0c05fc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral2:Landroid/widget/ImageButton;

    .line 145
    const v0, 0x7f0c05fd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mConfirm:Landroid/widget/Button;

    .line 147
    const v0, 0x7f0c05f7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 149
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mTitle:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070305

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    return-void
.end method

.method private queryInvoinceAllData()V
    .locals 5

    .prologue
    .line 480
    const-string v0, "invoiceGeneral"

    .line 481
    .local v0, functionId:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbBody:Lorg/json/JSONObject;

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->isNoRegisterOrder:Z

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pin"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbBody:Lorg/json/JSONObject;

    new-instance v3, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Ljava/lang/String;Lorg/json/JSONObject;Lcom/jingdong/common/utils/HttpGroup$OnAllListener;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 557
    return-void

    .line 492
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setNewBook(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 367
    .local v0, baseInfoBook:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 368
    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelectedID:I

    .line 379
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .end local v0           #baseInfoBook:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 370
    .restart local v0       #baseInfoBook:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    :cond_3
    const/4 v1, 0x0

    .local v1, k:I
    :goto_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #baseInfoBook:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    check-cast v0, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 372
    .restart local v0       #baseInfoBook:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 373
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelectedID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setNewGeneral(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 250
    .local v0, baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 251
    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelectedID:I

    .line 262
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    .end local v0           #baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 253
    .restart local v0       #baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    :cond_3
    const/4 v1, 0x0

    .local v1, k:I
    :goto_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    check-cast v0, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 255
    .restart local v0       #baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsGeneral:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 256
    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelectedID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private showCompanyTextView(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 618
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->post(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method private showInvoinceBookView()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$9;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->post(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method private showInvoinceGeneralView()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->post(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method private showInvoinceTypesView()V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->post(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f0300f0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNoRegisterOrder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->isNoRegisterOrder:Z

    .line 92
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ExtraNewCurrentOrder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/NewCurrentOrder;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 94
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->initComponent()V

    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOrderStr()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 98
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->getCartItemInfo()V

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelectedID:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelectedID:I

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->queryInvoinceAllData()V

    .line 109
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->handleClickEvent()V

    .line 110
    return-void
.end method

.method public updateInvoinceInfo()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceType(Ljava/lang/Integer;)V

    .line 116
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceBook:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelectedID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentTypeBook(Ljava/lang/Integer;)V

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelectedID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentsType(Ljava/lang/Integer;)V

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const-string v1, "\u5355\u4f4d"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceTitle(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCompanyName(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceHeaderType(Ljava/lang/Integer;)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const-string v1, "\u4e2a\u4eba"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceTitle(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceHeaderType(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public updatePaymentInfo()V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method public updateUserInfo()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public updateYouhuiInfo()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method
