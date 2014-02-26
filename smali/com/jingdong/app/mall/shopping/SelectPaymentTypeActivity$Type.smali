.class public Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final TYPE_FOUR:I = 0x19b

.field public static final TYPE_THREE:I = 0x137


# instance fields
.field days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;",
            ">;"
        }
    .end annotation
.end field

.field firstVisPos:I

.field grayFlag:Z

.field grayMsg:Ljava/lang/String;

.field localType:I

.field promise311Tip:Ljava/lang/String;

.field promiseMsg:Ljava/lang/String;

.field promiseSendPay:Ljava/lang/String;

.field promiseType:I

.field sendMsg:Ljava/lang/String;

.field show311Text:Ljava/lang/String;

.field support:Z

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->days:Ljava/util/ArrayList;

    .line 1885
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->firstVisPos:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1870
    const/4 v0, 0x0

    .line 1871
    .local v0, str:Ljava/lang/String;
    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    const/16 v2, 0x137

    if-ne v1, v2, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promise311Tip:Ljava/lang/String;

    .line 1880
    :cond_0
    :goto_0
    return-object v0

    .line 1873
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    const/16 v2, 0x19b

    if-ne v1, v2, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseMsg:Ljava/lang/String;

    goto :goto_0
.end method
