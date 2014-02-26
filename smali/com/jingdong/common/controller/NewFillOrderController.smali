.class public Lcom/jingdong/common/controller/NewFillOrderController;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;,
        Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;
    }
.end annotation


# static fields
.field public static final MODIFY_TYPE_INVOICE:I = 0x3

.field public static final MODIFY_TYPE_PAYMENT:I = 0x2

.field public static final MODIFY_TYPE_RECEIVER:I = 0x1

.field public static final PAYMENT_TYPE_CASH_DELIVERY:I = 0x1

.field public static final PAYMENT_TYPE_ON_LINE:I = 0x4

.field public static final PAYMENT_TYPE_POST:I = 0x2

.field public static final PAYMENT_TYPE_SELF:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private balanceChangeFlag:Z

.field private cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private isLastOrder:Z

.field private jdBeanChangeFlag:Z

.field private mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

.field private modifyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jingdong/common/controller/NewFillOrderController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/cart/CartResponseInfo;Lcom/jingdong/common/entity/NewCurrentOrder;)V
    .locals 2
    .parameter "httpGroupaAsynPool"
    .parameter "cartResponseInfo"
    .parameter "newCurrentOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I

    .line 94
    if-nez p3, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "NewCurrentOrder can not be empty !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 98
    iput-object p2, p0, Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 99
    iput-object p3, p0, Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/NewFillOrderController;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/NewFillOrderController;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/controller/NewFillOrderController;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->balanceChangeFlag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/controller/NewFillOrderController;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->jdBeanChangeFlag:Z

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/controller/NewFillOrderController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/controller/NewFillOrderController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->balanceChangeFlag:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/common/controller/NewFillOrderController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->jdBeanChangeFlag:Z

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    return-object v0
.end method


# virtual methods
.method public getmNewCurrentOrder()Lcom/jingdong/common/entity/NewCurrentOrder;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    return-object v0
.end method

.method public modifyInvoice(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 1
    .parameter "newFillOrderListener"

    .prologue
    .line 125
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 127
    return-void
.end method

.method public modifyPayment(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 1
    .parameter "newFillOrderListener"

    .prologue
    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I

    .line 121
    invoke-virtual {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 122
    return-void
.end method

.method public modifyReceiver(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 1
    .parameter "newFillOrderListener"

    .prologue
    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 117
    return-void
.end method

.method public setBalanceChangeFlag(Z)V
    .locals 0
    .parameter "balanceChangeFlag"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->balanceChangeFlag:Z

    .line 147
    return-void
.end method

.method public setJdBeanChangeFlag(Z)V
    .locals 0
    .parameter "jdBeanChangeFlag"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/jingdong/common/controller/NewFillOrderController;->jdBeanChangeFlag:Z

    .line 151
    return-void
.end method

.method public submitOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 2
    .parameter "newFillOrderListener"

    .prologue
    .line 135
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;-><init>(Lcom/jingdong/common/controller/NewFillOrderController;)V

    .line 136
    .local v0, list:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->setEvent(I)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->setListener(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 138
    invoke-virtual {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->start()V

    .line 139
    return-void
.end method

.method public syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 2
    .parameter "newFillOrderListener"

    .prologue
    .line 108
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;-><init>(Lcom/jingdong/common/controller/NewFillOrderController;)V

    .line 109
    .local v0, list:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->setEvent(I)V

    .line 110
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->setListener(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 111
    invoke-virtual {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->start()V

    .line 112
    return-void
.end method
